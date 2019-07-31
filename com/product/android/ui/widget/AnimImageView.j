.bytecode 50.0
.class public synchronized com/product/android/ui/widget/AnimImageView
.super android/widget/ImageView

.field public static final 'CURRENT_STOP' I = 3


.field private 'mAudioImageIds' [[I

.field private 'mAudioPosition' I

.field private 'mCurrent' I

.field private 'mShowImageList' [I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
iconst_3
putfield com/product/android/ui/widget/AnimImageView/mCurrent I
aload 0
iconst_3
anewarray [I
putfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
aload 0
iconst_0
putfield com/product/android/ui/widget/AnimImageView/mAudioPosition I
aload 0
aconst_null
putfield com/product/android/ui/widget/AnimImageView/mShowImageList [I
aload 0
invokespecial com/product/android/ui/widget/AnimImageView/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_3
putfield com/product/android/ui/widget/AnimImageView/mCurrent I
aload 0
iconst_3
anewarray [I
putfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
aload 0
iconst_0
putfield com/product/android/ui/widget/AnimImageView/mAudioPosition I
aload 0
aconst_null
putfield com/product/android/ui/widget/AnimImageView/mShowImageList [I
aload 0
invokespecial com/product/android/ui/widget/AnimImageView/initData()V
return
.limit locals 3
.limit stack 3
.end method

.method private initData()V
getstatic com/nd/android/u/allcommon/R$drawable/chatfrom_voice_playing_f1 I
istore 1
getstatic com/nd/android/u/allcommon/R$drawable/chatfrom_voice_playing_f2 I
istore 2
getstatic com/nd/android/u/allcommon/R$drawable/chatfrom_voice_playing_f3 I
istore 3
getstatic com/nd/android/u/allcommon/R$drawable/chatfrom_voice_playing_f3 I
istore 4
getstatic com/nd/android/u/allcommon/R$drawable/chatto_voice_playing_f1 I
istore 5
getstatic com/nd/android/u/allcommon/R$drawable/chatto_voice_playing_f2 I
istore 6
getstatic com/nd/android/u/allcommon/R$drawable/chatto_voice_playing_f3 I
istore 7
getstatic com/nd/android/u/allcommon/R$drawable/chatto_voice_playing_f3 I
istore 8
getstatic com/nd/android/u/allcommon/R$drawable/wbflower_voice_playing_f1 I
istore 9
getstatic com/nd/android/u/allcommon/R$drawable/wbflower_voice_playing_f2 I
istore 10
getstatic com/nd/android/u/allcommon/R$drawable/wbflower_voice_playing_f3 I
istore 11
getstatic com/nd/android/u/allcommon/R$drawable/wbflower_voice_playing I
istore 12
aload 0
getfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
iconst_0
iconst_4
newarray int
dup
iconst_0
iload 1
iastore
dup
iconst_1
iload 2
iastore
dup
iconst_2
iload 3
iastore
dup
iconst_3
iload 4
iastore
aastore
aload 0
getfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
iconst_1
iconst_4
newarray int
dup
iconst_0
iload 5
iastore
dup
iconst_1
iload 6
iastore
dup
iconst_2
iload 7
iastore
dup
iconst_3
iload 8
iastore
aastore
aload 0
getfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
iconst_2
iconst_4
newarray int
dup
iconst_0
iload 9
iastore
dup
iconst_1
iload 10
iastore
dup
iconst_2
iload 11
iastore
dup
iconst_3
iload 12
iastore
aastore
return
.limit locals 13
.limit stack 6
.end method

.method public setFlowerMsgTalk()V
aload 0
iconst_2
putfield com/product/android/ui/widget/AnimImageView/mAudioPosition I
return
.limit locals 1
.limit stack 2
.end method

.method public setMyTalk(Z)V
iload 1
ifeq L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield com/product/android/ui/widget/AnimImageView/mAudioPosition I
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public setShowList([I)V
aload 0
aload 1
putfield com/product/android/ui/widget/AnimImageView/mShowImageList [I
return
.limit locals 2
.limit stack 2
.end method

.method public showState(I)V
aload 0
iload 1
putfield com/product/android/ui/widget/AnimImageView/mCurrent I
aload 0
getfield com/product/android/ui/widget/AnimImageView/mShowImageList [I
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "drawable://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/ui/widget/AnimImageView/mShowImageList [I
aload 0
getfield com/product/android/ui/widget/AnimImageView/mCurrent I
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L1:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
aload 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "drawable://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/ui/widget/AnimImageView/mAudioImageIds [[I
aload 0
getfield com/product/android/ui/widget/AnimImageView/mAudioPosition I
aaload
aload 0
getfield com/product/android/ui/widget/AnimImageView/mCurrent I
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L1
.limit locals 3
.limit stack 3
.end method
