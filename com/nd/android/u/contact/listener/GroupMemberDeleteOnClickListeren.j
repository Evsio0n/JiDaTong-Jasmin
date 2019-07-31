.bytecode 50.0
.class public synchronized com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class public static abstract interface IDeleteGroupMemberListener inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener outer com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren
.inner class MyDeleteGroupDialog inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog outer com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren
.inner class inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$1
.inner class inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$2

.field private static final 'TAG' Ljava/lang/String; = "GroupMemberDeleteOnClickListeren"

.field private 'delGroupMemberListener' Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;

.field private 'deletMembers' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mDialog' Lcom/nd/android/u/contact/dialog/MyDialog;

.field private 'mFid' J

.field private 'mGid' J

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mDialog Lcom/nd/android/u/contact/dialog/MyDialog;
aload 0
aload 1
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;)V
aload 0
invokespecial com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/doDeleteGroupMember()V
return
.limit locals 1
.limit stack 1
.end method

.method private doDeleteGroupMember()V
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/delGroupMemberListener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
invokeinterface com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener/onStartDialog()V 0
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mGid J
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mFid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/deleteGroupMember(JLjava/lang/Object;)Ljava/lang/String;
astore 1
aload 1
ifnull L2
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/delGroupMemberListener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
aload 1
invokeinterface com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener/onSetKey(Ljava/lang/String;)V 1
return
L2:
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/delGroupMemberListener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
invokeinterface com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener/onDismissDialog()V 0
return
.limit locals 2
.limit stack 4
.end method

.method public final onClick(Landroid/view/View;)V
aload 0
new com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/delete_group_member I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog/<init>(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mDialog Lcom/nd/android/u/contact/dialog/MyDialog;
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mDialog Lcom/nd/android/u/contact/dialog/MyDialog;
invokevirtual com/nd/android/u/contact/dialog/MyDialog/create()Landroid/app/AlertDialog;
pop
aload 0
getfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mDialog Lcom/nd/android/u/contact/dialog/MyDialog;
invokevirtual com/nd/android/u/contact/dialog/MyDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 7
.end method

.method public final setDeletMembers(Ljava/util/List;JLjava/lang/String;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;JLjava/lang/String;)V"
aload 0
lload 2
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mGid J
aload 0
aload 1
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/deletMembers Ljava/util/List;
return
.limit locals 5
.limit stack 3
.end method

.method public final setDeleteGroupMemberListener(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/delGroupMemberListener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setFid(JJLjava/lang/String;)V
aload 0
lload 1
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mFid J
aload 0
lload 3
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/mGid J
return
.limit locals 6
.limit stack 3
.end method
