.bytecode 50.0
.class public synchronized com/nd/teamfile/activity/FileExplorerActivity
.super android/support/v4/app/FragmentActivity

.field private 'mFragment' Lcom/nd/teamfile/fragment/FileExplorerFragment;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
aload 0
getfield com/nd/teamfile/activity/FileExplorerActivity/mFragment Lcom/nd/teamfile/fragment/FileExplorerFragment;
areturn
.limit locals 2
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/teamfile/activity/FileExplorerActivity/mFragment Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokevirtual com/nd/teamfile/fragment/FileExplorerFragment/onBack()Z
ifne L0
aload 0
invokespecial android/support/v4/app/FragmentActivity/onBackPressed()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/teamfile/R$layout/activity_file_explorer I
invokevirtual com/nd/teamfile/activity/FileExplorerActivity/setContentView(I)V
aload 0
getfield com/nd/teamfile/activity/FileExplorerActivity/mFragment Lcom/nd/teamfile/fragment/FileExplorerFragment;
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/teamfile/activity/FileExplorerActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
getstatic com/nd/teamfile/R$id/fragment I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/teamfile/fragment/FileExplorerFragment
putfield com/nd/teamfile/activity/FileExplorerActivity/mFragment Lcom/nd/teamfile/fragment/FileExplorerFragment;
L0:
return
.limit locals 2
.limit stack 3
.end method
