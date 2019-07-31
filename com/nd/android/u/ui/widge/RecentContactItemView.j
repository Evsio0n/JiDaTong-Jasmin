.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/RecentContactItemView
.super android/widget/RelativeLayout
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$1
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$2
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$3

.field private 'authImage' Landroid/widget/ImageView;

.field private 'mBtnDel' Landroid/widget/Button;

.field private 'mBtnSetTop' Landroid/widget/Button;

.field private 'mContactItem' Lcom/nd/android/u/controller/bean/contact/RecentContactItem;

.field private 'mIvMsgFlag' Landroid/widget/ImageView;

.field private 'mIvPic' Lcom/nd/android/u/ui/widge/CircleImageView;

.field private 'mRoot' Landroid/view/View;

.field private 'mSmvContactView' Lcom/nd/android/u/ui/widge/SliderMenuView;

.field private 'mTvLatestMsgTime' Landroid/widget/TextView;

.field private 'mTvMsgContent' Landroid/widget/TextView;

.field private 'mTvMsgTitle' Landroid/widget/TextView;

.field private 'mTvUnreadMsgCount' Landroid/widget/TextView;

.field private 'tvUp' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/init()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mContactItem Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mSmvContactView Lcom/nd/android/u/ui/widge/SliderMenuView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/recent_contact_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/pic I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/msg_unread_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/latest_msg_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mTvLatestMsgTime Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/msg_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mTvMsgTitle Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/send_msg_failed I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mIvMsgFlag Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/msg_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mTvMsgContent Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/auth_recent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/RecentContactItemView/authImage Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/btn_del I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnDel Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mRoot Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/btn_set_top I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/smv_contact_item I
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/SliderMenuView
putfield com/nd/android/u/ui/widge/RecentContactItemView/mSmvContactView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_up I
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/RecentContactItemView/tvUp Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method private setUnreadMsgCount(I)V
iload 1
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
iload 1
bipush 99
if_icmple L1
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%d+"
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 99
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L2:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
astore 2
goto L2
L0:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 6
.end method

.method private updateContentMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
iload 3
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mSmvContactView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/resetMenu()V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 4
aload 4
bipush -2
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 4
bipush -2
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/msgcount_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/setUnreadMsgCount(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvLatestMsgTime Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastContactTime()J
invokestatic com/nd/android/u/chatUiUtils/TimeUtils/getRecentContactDisplayTime(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvMsgContent Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getContentText()Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnDel Landroid/widget/Button;
aload 1
getstatic com/nd/android/u/chat/R$string/contact_recorder_del I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnDel Landroid/widget/Button;
new com/nd/android/u/ui/widge/RecentContactItemView$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/RecentContactItemView$2/<init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getTopTime()J
lconst_0
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
aload 1
getstatic com/nd/android/u/chat/R$string/cancel_contact_recorder_set_top I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/tvUp Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
new com/nd/android/u/ui/widge/RecentContactItemView$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/RecentContactItemView$3/<init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 2
instanceof com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
iconst_4
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getUnreadCount()I
ifle L5
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 1
aload 1
bipush 20
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 1
bipush 20
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/common_icon_new_function I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
L4:
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
aload 1
getstatic com/nd/android/u/chat/R$string/contact_recorder_set_top I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/tvUp Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
L0:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnDel Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mBtnSetTop Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/tvUp Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L3
L5:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvUnreadMsgCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 5
.limit stack 4
.end method

.method private updateContentMsgState(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getLastMsgState()I
istore 3
iload 3
invokestatic com/nd/android/u/controller/MessageConst$MessageState/isFailed(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvMsgFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/send_msg_failed I
invokevirtual android/widget/ImageView/setImageResource(I)V
iconst_0
istore 3
L1:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvMsgFlag Landroid/widget/ImageView;
iload 3
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
iload 3
invokestatic com/nd/android/u/controller/MessageConst$MessageState/isSuccess(I)Z
ifeq L2
bipush 8
istore 3
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvMsgFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/sending_msg I
invokevirtual android/widget/ImageView/setImageResource(I)V
iconst_0
istore 3
goto L1
.limit locals 4
.limit stack 2
.end method

.method private updateContentPic(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/cancelDisplayTask(Landroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
new com/nd/android/u/ui/widge/RecentContactItemView$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/RecentContactItemView$1/<init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;Landroid/content/Context;)V
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mIvPic Lcom/nd/android/u/ui/widge/CircleImageView;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/displayHeadPortrait(Landroid/widget/ImageView;)V
return
.limit locals 3
.limit stack 5
.end method

.method private updateContentTitle(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
astore 5
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/authImage Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifeq L0
new android/text/SpannableString
dup
aload 5
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
ldc_w -14658166
istore 3
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/isDimissed(Ljava/lang/String;)Z
ifeq L1
ldc_w -4539718
istore 3
aload 1
getstatic com/nd/android/u/chat/R$string/public_number_dismissed_ext I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
new android/text/SpannableString
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
L1:
aload 4
new android/text/style/ForegroundColorSpan
dup
iload 3
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 4
invokevirtual android/text/SpannableString/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvMsgTitle Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 1
aload 1
ifnull L2
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/authImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView/mTvMsgTitle Landroid/widget/TextView;
aload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 6
.limit stack 5
.end method

.method public updateContent(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
aload 0
aload 2
putfield com/nd/android/u/ui/widge/RecentContactItemView/mContactItem Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/updateContentPic(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/updateContentTitle(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/updateContentMsgState(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/updateContentMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
return
.limit locals 4
.limit stack 4
.end method
