.bytecode 50.0
.class public synchronized abstract com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick
.super java/lang/Object
.implements com/nd/android/u/ui/msg_num_click/IMsgNumClick
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$2
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$3
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$5

.field protected 'context' Landroid/content/Context;

.field private 'dialog' Landroid/app/Dialog;

.field private 'mTvAddContactAndFriend' Landroid/widget/TextView;

.field private 'mTvCallAndCopy' Landroid/widget/TextView;

.field private 'mTvCancel' Landroid/widget/TextView;

.field private 'mTvCopyAndSearchFriends' Landroid/widget/TextView;

.field private 'mTvNotifyTitle' Landroid/widget/TextView;

.field protected 'text' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/text Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;)Landroid/app/Dialog;
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method public doNumClick()V
aload 0
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/context Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/text Ljava/lang/String;
invokevirtual com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/getTitle(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/getItems()[Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/getListners()[Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/showMenuDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method public abstract getItems()[Ljava/lang/String;
.end method

.method protected getLayout(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
new android/widget/LinearLayout
dup
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 4
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$dimen/chat_like_student_item_height I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 5
aload 5
bipush 17
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 4
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 6
aload 6
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/chat_like_student_btn_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 6
iconst_0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$dimen/chat_like_student_btn_text_size I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
i2f
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 6
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 17
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 4
aload 6
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 4
aload 5
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
new com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$5
dup
aload 0
aload 3
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$5/<init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;Landroid/view/View$OnClickListener;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 4
areturn
.limit locals 7
.limit stack 5
.end method

.method public abstract getListners()[Landroid/view/View$OnClickListener;
.end method

.method public abstract getTitle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected showMenuDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Landroid/view/View$OnClickListener;)V
aload 3
ifnull L0
aload 3
arraylength
ifne L1
L0:
return
L1:
aload 4
ifnull L2
aload 3
arraylength
aload 4
arraylength
if_icmpne L0
L2:
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/pop_bottom_menu I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 5
aload 0
aload 5
getstatic com/nd/android/u/chat/R$id/tv_notify_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvNotifyTitle Landroid/widget/TextView;
aload 0
aload 5
getstatic com/nd/android/u/chat/R$id/tv_call_and_copy I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCallAndCopy Landroid/widget/TextView;
aload 0
aload 5
getstatic com/nd/android/u/chat/R$id/tv_copy_and_search_friends I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCopyAndSearchFriends Landroid/widget/TextView;
aload 0
aload 5
getstatic com/nd/android/u/chat/R$id/tv_add_contact_and_add_friend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvAddContactAndFriend Landroid/widget/TextView;
aload 0
aload 5
getstatic com/nd/android/u/chat/R$id/tv_cancel I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCancel Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvNotifyTitle Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCancel Landroid/widget/TextView;
new com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1/<init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new android/app/Dialog
dup
aload 1
getstatic com/nd/android/u/chat/R$style/MyDialog I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 2
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 6
aload 6
aload 2
invokevirtual android/view/Display/getWidth()I
putfield android/view/WindowManager$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/getWindow()Landroid/view/Window;
aload 6
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/dialog Landroid/app/Dialog;
aload 5
invokevirtual android/app/Dialog/setContentView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCallAndCopy Landroid/widget/TextView;
aload 3
iconst_0
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCopyAndSearchFriends Landroid/widget/TextView;
aload 3
iconst_1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
iconst_2
aaload
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_student_add_text I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvAddContactAndFriend Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCallAndCopy Landroid/widget/TextView;
new com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$2
dup
aload 0
aload 4
aload 5
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$2/<init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;[Landroid/view/View$OnClickListener;Landroid/view/View;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvCopyAndSearchFriends Landroid/widget/TextView;
new com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$3
dup
aload 0
aload 4
aload 5
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$3/<init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;[Landroid/view/View$OnClickListener;Landroid/view/View;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvAddContactAndFriend Landroid/widget/TextView;
new com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4
dup
aload 0
aload 4
aload 5
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/<init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;[Landroid/view/View$OnClickListener;Landroid/view/View;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L3:
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvAddContactAndFriend Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/mTvAddContactAndFriend Landroid/widget/TextView;
aload 3
iconst_2
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
.limit locals 7
.limit stack 6
.end method
