.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat$BigPictureStyle
.super android/support/v4/app/NotificationCompat$Style
.inner class public static BigPictureStyle inner android/support/v4/app/NotificationCompat$BigPictureStyle outer android/support/v4/app/NotificationCompat

.field 'mPicture' Landroid/graphics/Bitmap;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
aload 0
aload 1
invokevirtual android/support/v4/app/NotificationCompat$BigPictureStyle/setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
return
.limit locals 2
.limit stack 2
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigPictureStyle/mPicture Landroid/graphics/Bitmap;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigPictureStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$BigPictureStyle/mSummaryText Ljava/lang/CharSequence;
aload 0
iconst_1
putfield android/support/v4/app/NotificationCompat$BigPictureStyle/mSummaryTextSet Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
