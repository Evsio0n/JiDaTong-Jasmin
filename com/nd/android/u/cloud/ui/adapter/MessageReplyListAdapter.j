.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class static synthetic inner com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$1
.inner class private Holder inner com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter
.inner class MyOnclickLinstener inner com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener outer com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter

.field private static final 'TAG' Ljava/lang/String; = "MessageSendListAdapter"

.field private 'context' Landroid/content/Context;

.field private 'groupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/bean/SmsReplyBean
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$1;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903494
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131625995
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/usename Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131625996
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/phone Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131625997
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/time Landroid/widget/TextView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder
astore 2
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/usename Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getPhone1()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/phone Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getPhone2()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$Holder/time Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/getTime1()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
new com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener
dup
aload 0
aload 4
invokespecial com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter$MyOnclickLinstener/<init>(Lcom/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter;Lcom/nd/android/u/cloud/bean/SmsReplyBean;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MessageReplyListAdapter/groupList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
