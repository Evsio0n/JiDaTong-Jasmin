.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_TypingTip
.super android/widget/RelativeLayout

.field private 'mAivTyping' Lcom/nd/android/u/ui/widge/AniImageView;

.field private 'mAniRes' [I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_3
newarray int
dup
iconst_0
getstatic com/nd/android/u/chat/R$drawable/iv_typing1 I
iastore
dup
iconst_1
getstatic com/nd/android/u/chat/R$drawable/iv_typing2 I
iastore
dup
iconst_2
getstatic com/nd/android/u/chat/R$drawable/iv_typing3 I
iastore
putfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAniRes [I
aload 0
new com/nd/android/u/ui/widge/AniImageView
dup
aload 1
invokespecial com/nd/android/u/ui/widge/AniImageView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAniRes [I
invokevirtual com/nd/android/u/ui/widge/AniImageView/setAniRes([I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_TypingTip/addView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
invokevirtual com/nd/android/u/ui/widge/AniImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 1
aload 1
bipush -2
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 1
bipush -2
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 1
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_TypingTip/getContext()Landroid/content/Context;
ldc_w 35.0F
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/RelativeLayout$LayoutParams/leftMargin I
aload 1
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_TypingTip/getContext()Landroid/content/Context;
ldc_w 21.0F
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ScreenUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
aload 1
invokevirtual com/nd/android/u/ui/widge/AniImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_TypingTip/startAni()V
return
.limit locals 2
.limit stack 5
.end method

.method public startAni()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
invokevirtual com/nd/android/u/ui/widge/AniImageView/startAni()V
return
.limit locals 1
.limit stack 1
.end method

.method public stopAni()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_TypingTip/mAivTyping Lcom/nd/android/u/ui/widge/AniImageView;
invokevirtual com/nd/android/u/ui/widge/AniImageView/stopAni()V
return
.limit locals 1
.limit stack 1
.end method
