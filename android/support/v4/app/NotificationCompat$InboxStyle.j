.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat$InboxStyle
.super android/support/v4/app/NotificationCompat$Style
.inner class public static InboxStyle inner android/support/v4/app/NotificationCompat$InboxStyle outer android/support/v4/app/NotificationCompat

.field 'mTexts' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/NotificationCompat$InboxStyle/mTexts Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
aload 0
invokespecial android/support/v4/app/NotificationCompat$Style/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/NotificationCompat$InboxStyle/mTexts Ljava/util/ArrayList;
aload 0
aload 1
invokevirtual android/support/v4/app/NotificationCompat$InboxStyle/setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
return
.limit locals 2
.limit stack 3
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
aload 0
getfield android/support/v4/app/NotificationCompat$InboxStyle/mTexts Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$InboxStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$InboxStyle/mSummaryText Ljava/lang/CharSequence;
aload 0
iconst_1
putfield android/support/v4/app/NotificationCompat$InboxStyle/mSummaryTextSet Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
