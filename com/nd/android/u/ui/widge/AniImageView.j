.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/AniImageView
.super android/widget/ImageView
.inner class inner com/nd/android/u/ui/widge/AniImageView$1

.field private static final 'ANI_START' I = 1


.field private static final 'ANI_STOP' I = 0


.field private static final 'HANDLE_REFLESH_IMAGE' I = 9991


.field private 'mAniImageRes' [I

.field private 'mCurFrame' I

.field private 'mHandler' Landroid/os/Handler;

.field private 'mMaxFrame' I

.field private 'mState' I

.field public 'mUpdateRate' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/AniImageView$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/AniImageView$1/<init>(Lcom/nd/android/u/ui/widge/AniImageView;)V
putfield com/nd/android/u/ui/widge/AniImageView/mHandler Landroid/os/Handler;
aload 0
invokespecial com/nd/android/u/ui/widge/AniImageView/init()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/AniImageView;)I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/AniImageView;)I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/ui/widge/AniImageView;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/AniImageView;)I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mMaxFrame I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/AniImageView;)V
aload 0
invokespecial com/nd/android/u/ui/widge/AniImageView/updateFrame()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/AniImageView;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mState I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mMaxFrame I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
return
.limit locals 1
.limit stack 2
.end method

.method private updateFrame()V
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mMaxFrame I
if_icmpge L0
aload 0
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mAniImageRes [I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
iaload
invokevirtual com/nd/android/u/ui/widge/AniImageView/setImageResource(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public setAniRes([I)V
aload 1
ifnull L0
aload 1
arraylength
ifne L1
L0:
return
L1:
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mState I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mCurFrame I
aload 0
aload 1
arraylength
putfield com/nd/android/u/ui/widge/AniImageView/mMaxFrame I
aload 0
aload 1
putfield com/nd/android/u/ui/widge/AniImageView/mAniImageRes [I
aload 0
sipush 500
putfield com/nd/android/u/ui/widge/AniImageView/mUpdateRate I
aload 0
aload 1
iconst_0
iaload
invokevirtual com/nd/android/u/ui/widge/AniImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public startAni()V
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mMaxFrame I
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mAniImageRes [I
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mState I
iconst_1
if_icmpeq L0
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/AniImageView/mState I
aload 0
getfield com/nd/android/u/ui/widge/AniImageView/mHandler Landroid/os/Handler;
sipush 9991
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public stopAni()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/AniImageView/mState I
return
.limit locals 1
.limit stack 2
.end method
