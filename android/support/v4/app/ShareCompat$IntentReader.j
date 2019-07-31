.bytecode 50.0
.class public synchronized android/support/v4/app/ShareCompat$IntentReader
.super java/lang/Object
.inner class public static IntentReader inner android/support/v4/app/ShareCompat$IntentReader outer android/support/v4/app/ShareCompat

.field private static final 'TAG' Ljava/lang/String; = "IntentReader"

.field private 'mActivity' Landroid/app/Activity;

.field private 'mCallingActivity' Landroid/content/ComponentName;

.field private 'mCallingPackage' Ljava/lang/String;

.field private 'mIntent' Landroid/content/Intent;

.field private 'mStreams' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/net/Uri;>;"

.method private <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/app/ShareCompat$IntentReader/mActivity Landroid/app/Activity;
aload 0
aload 1
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
putfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
aload 0
aload 1
invokestatic android/support/v4/app/ShareCompat/getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
putfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
aload 0
aload 1
invokestatic android/support/v4/app/ShareCompat/getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
putfield android/support/v4/app/ShareCompat$IntentReader/mCallingActivity Landroid/content/ComponentName;
return
.limit locals 2
.limit stack 2
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
new android/support/v4/app/ShareCompat$IntentReader
dup
aload 0
invokespecial android/support/v4/app/ShareCompat$IntentReader/<init>(Landroid/app/Activity;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingActivity Landroid/content/ComponentName;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingActivity Landroid/content/ComponentName;
ifnonnull L3
aconst_null
areturn
L3:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
astore 1
L0:
aload 1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingActivity Landroid/content/ComponentName;
invokevirtual android/content/pm/PackageManager/getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "IntentReader"
ldc "Could not retrieve icon for calling activity"
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
ifnonnull L3
aconst_null
areturn
L3:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
astore 1
L0:
aload 1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
invokevirtual android/content/pm/PackageManager/getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "IntentReader"
ldc "Could not retrieve icon for calling application"
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
ifnonnull L3
aconst_null
areturn
L3:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
astore 1
L0:
aload 1
aload 1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
invokevirtual android/content/pm/PackageManager/getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "IntentReader"
ldc "Could not retrieve label for calling application"
aload 1
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public getCallingPackage()Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mCallingPackage Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEmailBcc()[Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.BCC"
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getEmailCc()[Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.CC"
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getEmailTo()[Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.EMAIL"
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getHtmlText()Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.HTML_TEXT"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
astore 1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ifnonnull L0
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentReader/getText()Ljava/lang/CharSequence;
astore 3
aload 3
instanceof android/text/Spanned
ifeq L1
aload 3
checkcast android/text/Spanned
invokestatic android/text/Html/toHtml(Landroid/text/Spanned;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
L1:
aload 2
astore 1
aload 3
ifnull L0
invokestatic android/support/v4/app/ShareCompat/access$000()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
aload 3
invokeinterface android/support/v4/app/ShareCompat$ShareCompatImpl/escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String; 1
areturn
.limit locals 4
.limit stack 2
.end method

.method public getStream()Landroid/net/Uri;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
areturn
.limit locals 1
.limit stack 2
.end method

.method public getStream(I)Landroid/net/Uri;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
ifnonnull L0
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentReader/isMultipleShare()Z
ifeq L0
aload 0
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
putfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
ifnull L1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/net/Uri
areturn
L1:
iload 1
ifne L2
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
areturn
L2:
new java/lang/IndexOutOfBoundsException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Stream items available: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentReader/getStreamCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " index requested: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IndexOutOfBoundsException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public getStreamCount()I
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
ifnonnull L0
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentReader/isMultipleShare()Z
ifeq L0
aload 0
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
putfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
ifnull L1
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mStreams Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L1:
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L2
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getSubject()Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.SUBJECT"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getText()Ljava/lang/CharSequence;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
ldc "android.intent.extra.TEXT"
invokevirtual android/content/Intent/getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getType()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isMultipleShare()Z
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.SEND_MULTIPLE"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isShareIntent()Z
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
astore 1
aload 1
ldc "android.intent.action.SEND"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
ldc "android.intent.action.SEND_MULTIPLE"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isSingleShare()Z
aload 0
getfield android/support/v4/app/ShareCompat$IntentReader/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.SEND"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 1
.limit stack 2
.end method
