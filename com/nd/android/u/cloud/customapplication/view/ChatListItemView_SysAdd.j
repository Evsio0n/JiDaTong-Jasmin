.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1

.field private 'iv_gift_name' Landroid/widget/ImageView;

.field private 'iv_gift_name2' Landroid/widget/ImageView;

.field private 'iv_name' Landroid/widget/ImageView;

.field private 'iv_name2' Landroid/widget/ImageView;

.field private 'll_lot_gift_add' Landroid/widget/LinearLayout;

.field private 'll_lot_gift_timeout' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;

.field private 'myOnClick' Landroid/view/View$OnClickListener;

.field private 'tv_gift_content' Landroid/widget/TextView;

.field private 'tv_gift_content2' Landroid/widget/TextView;

.field private 'tv_gift_num' Landroid/widget/TextView;

.field private 'tv_gift_num2' Landroid/widget/TextView;

.field private 'tv_lg_message_time' Landroid/widget/TextView;

.field private 'tv_lg_message_time2' Landroid/widget/TextView;

.field private 'tv_to_backpack' Landroid/widget/TextView;

.field private 'tv_to_backpack2' Landroid/widget/TextView;

.field private 'tv_to_comment' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)V
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/myOnClick Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903452
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131625743
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_add Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625744
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625745
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_name Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625746
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_gift_name Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625747
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_num Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625749
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_content Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625751
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_comment Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625752
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_backpack Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625753
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_timeout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625754
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time2 Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625755
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_name2 Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625756
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_gift_name2 Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625757
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_num2 Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625759
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_content2 Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625760
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_backpack2 Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_comment Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/itemType I
ldc_w 50001
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_comment Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/type I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_add Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_timeout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
ldc "assets://app_lot_gift.png"
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_name Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_gift_name Landroid/widget/ImageView;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_num Landroid/widget/TextView;
ldc "%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/count I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_content Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/displayContent Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_comment Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "<"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/btnText Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_comment Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_backpack Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_add Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/ll_lot_gift_timeout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time2 Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_lg_message_time2 Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
ldc "assets://app_lot_gift.png"
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_name2 Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/iconUrl Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/iv_gift_name2 Landroid/widget/ImageView;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_num2 Landroid/widget/TextView;
ldc "%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/count I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_gift_content2 Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/mMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SysAdd/displayContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/tv_to_backpack2 Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 6
.end method
