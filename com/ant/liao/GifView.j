.bytecode 50.0
.class public synchronized com/ant/liao/GifView
.super android/widget/ImageView
.implements com/ant/liao/GifAction
.inner class inner com/ant/liao/GifView$1
.inner class private DrawThread inner com/ant/liao/GifView$DrawThread outer com/ant/liao/GifView
.inner class public static final enum GifImageType inner com/ant/liao/GifView$GifImageType outer com/ant/liao/GifView

.field private static synthetic '$SWITCH_TABLE$com$ant$liao$GifView$GifImageType' [I

.field private 'animationType' Lcom/ant/liao/GifView$GifImageType;

.field private 'backView' Landroid/view/View;

.field private 'cacheImage' Z

.field private 'context' Landroid/content/Context;

.field private 'currentImage' Landroid/graphics/Bitmap;

.field private 'drawThread' Lcom/ant/liao/GifView$DrawThread;

.field private 'gifDecoder' Lcom/ant/liao/GifDecoder;

.field private 'isRun' Z

.field private 'pause' Z

.field private 'redrawHandler' Landroid/os/Handler;

.method static synthetic $SWITCH_TABLE$com$ant$liao$GifView$GifImageType()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
getstatic com/ant/liao/GifView/$SWITCH_TABLE$com$ant$liao$GifView$GifImageType [I
astore 0
aload 0
ifnull L7
aload 0
areturn
L7:
invokestatic com/ant/liao/GifView$GifImageType/values()[Lcom/ant/liao/GifView$GifImageType;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/ant/liao/GifView$GifImageType/COVER Lcom/ant/liao/GifView$GifImageType;
invokevirtual com/ant/liao/GifView$GifImageType/ordinal()I
iconst_3
iastore
L1:
aload 0
getstatic com/ant/liao/GifView$GifImageType/SYNC_DECODER Lcom/ant/liao/GifView$GifImageType;
invokevirtual com/ant/liao/GifView$GifImageType/ordinal()I
iconst_2
iastore
L3:
aload 0
getstatic com/ant/liao/GifView$GifImageType/WAIT_FINISH Lcom/ant/liao/GifView$GifImageType;
invokevirtual com/ant/liao/GifView$GifImageType/ordinal()I
iconst_1
iastore
L5:
aload 0
putstatic com/ant/liao/GifView/$SWITCH_TABLE$com$ant$liao$GifView$GifImageType [I
aload 0
areturn
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
aload 0
aconst_null
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
aload 0
iconst_1
putfield com/ant/liao/GifView/isRun Z
aload 0
iconst_0
putfield com/ant/liao/GifView/pause Z
aload 0
aconst_null
putfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
aload 0
aconst_null
putfield com/ant/liao/GifView/context Landroid/content/Context;
aload 0
iconst_0
putfield com/ant/liao/GifView/cacheImage Z
aload 0
aconst_null
putfield com/ant/liao/GifView/backView Landroid/view/View;
aload 0
getstatic com/ant/liao/GifView$GifImageType/SYNC_DECODER Lcom/ant/liao/GifView$GifImageType;
putfield com/ant/liao/GifView/animationType Lcom/ant/liao/GifView$GifImageType;
aload 0
new com/ant/liao/GifView$1
dup
aload 0
invokespecial com/ant/liao/GifView$1/<init>(Lcom/ant/liao/GifView;)V
putfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/ant/liao/GifView/context Landroid/content/Context;
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual com/ant/liao/GifView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/ant/liao/GifView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aconst_null
putfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
aload 0
aconst_null
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
aload 0
iconst_1
putfield com/ant/liao/GifView/isRun Z
aload 0
iconst_0
putfield com/ant/liao/GifView/pause Z
aload 0
aconst_null
putfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
aload 0
aconst_null
putfield com/ant/liao/GifView/context Landroid/content/Context;
aload 0
iconst_0
putfield com/ant/liao/GifView/cacheImage Z
aload 0
aconst_null
putfield com/ant/liao/GifView/backView Landroid/view/View;
aload 0
getstatic com/ant/liao/GifView$GifImageType/SYNC_DECODER Lcom/ant/liao/GifView$GifImageType;
putfield com/ant/liao/GifView/animationType Lcom/ant/liao/GifView$GifImageType;
aload 0
new com/ant/liao/GifView$1
dup
aload 0
invokespecial com/ant/liao/GifView$1/<init>(Lcom/ant/liao/GifView;)V
putfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/ant/liao/GifView/context Landroid/content/Context;
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual com/ant/liao/GifView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$0(Lcom/ant/liao/GifView;)Landroid/view/View;
aload 0
getfield com/ant/liao/GifView/backView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/ant/liao/GifView;)Landroid/graphics/Bitmap;
aload 0
getfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/ant/liao/GifView;)V
aload 0
invokespecial com/ant/liao/GifView/drawImage()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/ant/liao/GifView;)Z
aload 0
getfield com/ant/liao/GifView/isRun Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V
aload 0
aload 1
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$6(Lcom/ant/liao/GifView;)V
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$7(Lcom/ant/liao/GifView;)Z
aload 0
getfield com/ant/liao/GifView/pause Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/ant/liao/GifView;)Landroid/os/Handler;
aload 0
getfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private drawImage()V
aload 0
aload 0
getfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
invokevirtual com/ant/liao/GifView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
invokevirtual com/ant/liao/GifView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method private reDraw()V
aload 0
getfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 0
getfield com/ant/liao/GifView/redrawHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnonnull L0
aload 0
new com/ant/liao/GifDecoder
dup
aload 0
invokespecial com/ant/liao/GifDecoder/<init>(Lcom/ant/liao/GifAction;)V
putfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
L0:
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
aload 1
invokevirtual com/ant/liao/GifDecoder/setGifImage(Ljava/io/InputStream;)V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/start()V
return
.limit locals 2
.limit stack 4
.end method

.method private setGifDecoderImage([B)V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnonnull L0
aload 0
new com/ant/liao/GifDecoder
dup
aload 0
invokespecial com/ant/liao/GifDecoder/<init>(Lcom/ant/liao/GifAction;)V
putfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
L0:
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
aload 1
invokevirtual com/ant/liao/GifDecoder/setGifImage([B)V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/start()V
return
.limit locals 2
.limit stack 4
.end method

.method public destroy()V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnull L0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/free()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
aload 0
invokespecial android/widget/ImageView/onSaveInstanceState()Landroid/os/Parcelable;
pop
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnull L0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/free()V
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public parseOk(ZI)V
iload 1
ifeq L0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnull L1
invokestatic com/ant/liao/GifView/$SWITCH_TABLE$com$ant$liao$GifView$GifImageType()[I
aload 0
getfield com/ant/liao/GifView/animationType Lcom/ant/liao/GifView$GifImageType;
invokevirtual com/ant/liao/GifView$GifImageType/ordinal()I
iaload
tableswitch 1
L2
L3
L4
default : L0
L0:
return
L2:
iload 2
iconst_m1
if_icmpne L0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getFrameCount()I
iconst_1
if_icmple L5
new com/ant/liao/GifView$DrawThread
dup
aload 0
aconst_null
invokespecial com/ant/liao/GifView$DrawThread/<init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V
invokevirtual com/ant/liao/GifView$DrawThread/start()V
return
L5:
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
L4:
iload 2
iconst_1
if_icmpne L6
aload 0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getImage()Landroid/graphics/Bitmap;
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
L6:
iload 2
iconst_m1
if_icmpne L0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getFrameCount()I
iconst_1
if_icmple L7
aload 0
getfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
ifnonnull L0
aload 0
new com/ant/liao/GifView$DrawThread
dup
aload 0
aconst_null
invokespecial com/ant/liao/GifView$DrawThread/<init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V
putfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
aload 0
getfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
invokevirtual com/ant/liao/GifView$DrawThread/start()V
return
L7:
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
L3:
iload 2
iconst_1
if_icmpne L8
aload 0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getImage()Landroid/graphics/Bitmap;
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
L8:
iload 2
iconst_m1
if_icmpne L9
aload 0
invokespecial com/ant/liao/GifView/reDraw()V
return
L9:
aload 0
getfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
ifnonnull L0
aload 0
new com/ant/liao/GifView$DrawThread
dup
aload 0
aconst_null
invokespecial com/ant/liao/GifView$DrawThread/<init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V
putfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
aload 0
getfield com/ant/liao/GifView/drawThread Lcom/ant/liao/GifView$DrawThread;
invokevirtual com/ant/liao/GifView$DrawThread/start()V
return
L1:
ldc "gif"
ldc "parse error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method

.method public setAsBackground(Landroid/view/View;)V
aload 0
aload 1
putfield com/ant/liao/GifView/backView Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public setGifImage(I)V
aload 0
aload 0
invokevirtual com/ant/liao/GifView/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
invokespecial com/ant/liao/GifView/setGifDecoderImage(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setGifImage(Ljava/io/InputStream;)V
aload 0
aload 1
invokespecial com/ant/liao/GifView/setGifDecoderImage(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setGifImage([B)V
aload 0
aload 1
invokespecial com/ant/liao/GifView/setGifDecoderImage([B)V
return
.limit locals 2
.limit stack 2
.end method

.method public setGifImageType(Lcom/ant/liao/GifView$GifImageType;)V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnonnull L0
aload 0
aload 1
putfield com/ant/liao/GifView/animationType Lcom/ant/liao/GifView$GifImageType;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public showAnimation()V
aload 0
getfield com/ant/liao/GifView/pause Z
ifeq L0
aload 0
iconst_0
putfield com/ant/liao/GifView/pause Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public showCover()V
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
ifnonnull L0
return
L0:
aload 0
iconst_1
putfield com/ant/liao/GifView/pause Z
aload 0
aload 0
getfield com/ant/liao/GifView/gifDecoder Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getImage()Landroid/graphics/Bitmap;
putfield com/ant/liao/GifView/currentImage Landroid/graphics/Bitmap;
aload 0
invokevirtual com/ant/liao/GifView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method
