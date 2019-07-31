.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/PopAudioModeNotice
.super java/lang/Object
.inner class inner com/nd/android/u/ui/widge/PopAudioModeNotice$1
.inner class inner com/nd/android/u/ui/widge/PopAudioModeNotice$2

.field private 'mAnchor' Landroid/view/View;

.field private 'mContext' Landroid/content/Context;

.field private 'mWindow' Landroid/widget/PopupWindow;

.field private 'tvNote' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/PopAudioModeNotice/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/PopAudioModeNotice/mAnchor Landroid/view/View;
aload 0
invokespecial com/nd/android/u/ui/widge/PopAudioModeNotice/initView()V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/PopAudioModeNotice;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/audio_notice I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
new android/widget/PopupWindow
dup
aload 1
iconst_m1
bipush -2
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
aload 1
getstatic com/nd/android/u/chat/R$id/tvNote I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/PopAudioModeNotice/tvNote Landroid/widget/TextView;
aload 1
getstatic com/nd/android/u/chat/R$id/tvClose I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/android/u/ui/widge/PopAudioModeNotice$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/PopAudioModeNotice$1/<init>(Lcom/nd/android/u/ui/widge/PopAudioModeNotice;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setMode(I)V
iload 1
iconst_2
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/tvNote Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/chat_audio_phone I
invokevirtual android/widget/TextView/setText(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/tvNote Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/chat_audio_loud I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public show()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
invokespecial com/nd/android/u/ui/widge/PopAudioModeNotice/initView()V
L0:
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/PopAudioModeNotice/mAnchor Landroid/view/View;
invokevirtual android/widget/PopupWindow/showAsDropDown(Landroid/view/View;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/widge/PopAudioModeNotice$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/PopAudioModeNotice$2/<init>(Lcom/nd/android/u/ui/widge/PopAudioModeNotice;)V
ldc2_w 3000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 4
.end method
