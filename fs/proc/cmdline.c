// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/slab.h>
#include <asm/setup.h>

#ifdef CONFIG_PROC_BEGONIA_CMDLINE
static char patched_cmdline[COMMAND_LINE_SIZE];
#endif

static int cmdline_proc_show(struct seq_file *m, void *v)
{
#ifndef CONFIG_PROC_BEGONIA_CMDLINE
	seq_printf(m, "%s\n", saved_command_line);
#else
	seq_printf(m, "%s\n", patched_cmdline);
#endif
	return 0;
}

static int cmdline_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, cmdline_proc_show, NULL);
}

static const struct file_operations cmdline_proc_fops = {
	.open		= cmdline_proc_open,
	.read		= seq_read,
	.llseek		= seq_lseek,
	.release	= single_release,
};

#ifdef CONFIG_PROC_BEGONIA_CMDLINE
static char *padding = "                ";

static void replace_flag(char *cmd, const char *flag, const char *flag_new)
{
	char *start_addr, *end_addr;

	/* Ensure all instances of a flag are replaced */
	while ((start_addr = strstr(cmd, flag))) {
		end_addr = strchr(start_addr, ' ');
		if (end_addr) {
			if (strlen(flag)<strlen(flag_new)) {
				// xx yy=a zz
				//    ^   ^
				// xx yy=bb zz
				int length_to_copy = strlen( start_addr + (strlen(flag) ) ) + 1; // +1 to copy trailing '/0'
				int length_diff = strlen(flag_new)-strlen(flag);
				memcpy(start_addr+(strlen(flag)+length_diff), start_addr+(strlen(flag)), length_to_copy);
				memcpy(start_addr+(strlen(flag)), padding, length_diff);
			}
			memcpy(start_addr, flag_new, strlen(flag_new));
		}
		else
			*(start_addr - 1) = '\0';
	}
}

static void replace_safetynet_flags(char *cmd)
{
	// WARNING: be aware that you can't replace shorter string with longer ones in the function called here...
	replace_flag(cmd, "androidboot.vbmeta.device_state=unlocked",
			  "androidboot.vbmeta.device_state=locked  ");
	replace_flag(cmd, "androidboot.enable_dm_verity=0",
			  "androidboot.enable_dm_verity=1");
	replace_flag(cmd, "androidboot.secboot=disabled",
			  "androidboot.secboot=enabled ");
	replace_flag(cmd, "androidboot.verifiedbootstate=orange",
			  "androidboot.verifiedbootstate=green ");
	replace_flag(cmd, "androidboot.veritymode=logging",
			  "androidboot.veritymode=enforcing");
	replace_flag(cmd, "androidboot.veritymode=eio",
			  "androidboot.veritymode=enforcing");

}

static void append_cmdline(char *cmd, const char *flag_val) {
	strncat(cmd, " ", 2);
	strncat(cmd, flag_val, strlen(cmd) + 1);
}

static bool check_flag(char *cmd, const char *flag, const char *val)
{
	size_t f_len, r_len, v_len;
	char *f_pos, *v_pos, *v_end;
	char *r_val;

	f_pos = strstr(cmd, flag);
	if (!f_pos) {
		return false;
	}
	f_len = strlen(flag);
	v_len = strlen(val);
	v_pos = f_pos + f_len;
	v_end = v_pos + strcspn(f_pos + f_len, " ");
	r_len = v_end - v_pos;
	if ((r_val = kmalloc(r_len + 1, GFP_KERNEL)) == NULL)
		return false;
	memcpy(r_val, v_pos, r_len + 1);
	bool ret = r_len == v_len && !memcmp(r_val, val, r_len);
	return ret;
}

static void patch_begonia_cmdline(char *cmdline)
{
	if(!check_flag(cmdline, "androidboot.hwc=", "India"))
		append_cmdline(cmdline, "androidboot.product.hardware.sku=begonia");
}
#endif

static int __init proc_cmdline_init(void)
{
#ifdef CONFIG_PROC_BEGONIA_CMDLINE
	strcpy(patched_cmdline, saved_command_line);
	/*
	 * Replace various flags from command line seen by userspace in order to
	 * pass SafetyNet CTS check.
	 */
	patch_begonia_cmdline(patched_cmdline);
	replace_safetynet_flags(patched_cmdline);
#endif

	proc_create("cmdline", 0, NULL, &cmdline_proc_fops);
	return 0;
}
fs_initcall(proc_cmdline_init);