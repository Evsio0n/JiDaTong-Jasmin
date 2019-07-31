.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter
.super android/widget/BaseAdapter
.inner class private MyAdapter inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter outer com/android/u/weibo/contact/ui/dialog/DlgPermissionSet

.field private 'mInflater' Landroid/view/LayoutInflater;

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;

.method public <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/permission_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 3
getstatic com/android/u/weibo/R$id/permission_list_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 2
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
ldc "ItemTitle"
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)I
if_icmpne L1
aload 2
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 3
areturn
L1:
aload 2
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
