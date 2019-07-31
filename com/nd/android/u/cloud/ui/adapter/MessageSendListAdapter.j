.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class static synthetic inner com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$1
.inner class private Holder inner com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter

.field private static final 'TAG' Ljava/lang/String; = "MessageSendListAdapter"

.field private 'context' Landroid/content/Context;

.field private 'groupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
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
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SmsQueryDetailBean
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$1;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903496
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131625995
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/usename Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131625996
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/phone Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131625998
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/status Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131625997
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/time Landroid/widget/TextView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder
astore 2
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/getUsername()Ljava/lang/String;
astore 5
aload 5
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/usename Landroid/widget/TextView;
ldc_w 2131495474
invokevirtual android/widget/TextView/setText(I)V
L2:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/phone Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/getPhone()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/getStatus()I
iconst_1
if_icmpne L3
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/status Landroid/widget/TextView;
ldc_w 2131494979
invokevirtual android/widget/TextView/setText(I)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/status Landroid/widget/TextView;
ldc_w -13289159
invokevirtual android/widget/TextView/setTextColor(I)V
L4:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/time Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/getTime2()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
L1:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/usename Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L3:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/status Landroid/widget/TextView;
ldc_w 2131494986
invokevirtual android/widget/TextView/setText(I)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter$Holder/status Landroid/widget/TextView;
ldc_w -65536
invokevirtual android/widget/TextView/setTextColor(I)V
goto L4
.limit locals 6
.limit stack 4
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/groupList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
