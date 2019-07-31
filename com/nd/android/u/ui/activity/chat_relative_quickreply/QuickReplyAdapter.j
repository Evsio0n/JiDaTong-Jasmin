.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter
.super android/widget/BaseAdapter

.field public static final 'ITEM_HEIGHT' I = 40


.field private 'mContext' Landroid/content/Context;

.field private 'mQuickReplyList' Lcom/nd/android/u/controller/bean/QuickReplyList;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/controller/bean/QuickReplyList;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterView()Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/quick_reply_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 1
getstatic com/nd/android/u/chat/R$string/add I
invokevirtual android/widget/TextView/setText(I)V
aload 1
getstatic com/nd/android/u/chat/R$drawable/type_select_btn_pressed I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 1
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mContext Landroid/content/Context;
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
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
aload 2
checkcast android/widget/TextView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/quick_reply_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 2
getstatic android/text/TextUtils$TruncateAt/END Landroid/text/TextUtils$TruncateAt;
invokevirtual android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 2
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mContext Landroid/content/Context;
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_quickreply/QuickReplyAdapter/mQuickReplyList Lcom/nd/android/u/controller/bean/QuickReplyList;
iload 1
invokevirtual com/nd/android/u/controller/bean/QuickReplyList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/QuickReply
invokevirtual com/nd/android/u/controller/bean/QuickReply/getText()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
.limit locals 4
.limit stack 6
.end method
