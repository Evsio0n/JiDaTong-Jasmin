.bytecode 50.0
.class public synchronized android/support/v4/app/ShareCompat$IntentBuilder
.super java/lang/Object
.inner class public static IntentBuilder inner android/support/v4/app/ShareCompat$IntentBuilder outer android/support/v4/app/ShareCompat

.field private 'mActivity' Landroid/app/Activity;

.field private 'mBccAddresses' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mCcAddresses' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mChooserTitle' Ljava/lang/CharSequence;

.field private 'mIntent' Landroid/content/Intent;

.field private 'mStreams' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/net/Uri;>;"

.field private 'mToAddresses' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method private <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/app/ShareCompat$IntentBuilder/mActivity Landroid/app/Activity;
aload 0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
ldc "android.intent.action.SEND"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
putfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.support.v4.app.EXTRA_CALLING_PACKAGE"
aload 1
invokevirtual android/app/Activity/getPackageName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.support.v4.app.EXTRA_CALLING_ACTIVITY"
aload 1
invokevirtual android/app/Activity/getComponentName()Landroid/content/ComponentName;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc_w 524288
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
return
.limit locals 2
.limit stack 3
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
.signature "(Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 4
ifnull L0
aload 4
arraylength
istore 3
L1:
aload 2
invokevirtual java/util/ArrayList/size()I
iload 3
iadd
anewarray java/lang/String
astore 5
aload 2
aload 5
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 4
ifnull L2
aload 4
iconst_0
aload 5
aload 2
invokevirtual java/util/ArrayList/size()I
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L2:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
aload 1
aload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
return
L0:
iconst_0
istore 3
goto L1
.limit locals 6
.limit stack 5
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/getIntent()Landroid/content/Intent;
astore 4
aload 4
aload 1
invokevirtual android/content/Intent/getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
ifnull L0
aload 5
arraylength
istore 3
L1:
aload 2
arraylength
iload 3
iadd
anewarray java/lang/String
astore 6
aload 5
ifnull L2
aload 5
iconst_0
aload 6
iconst_0
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L2:
aload 2
iconst_0
aload 6
iload 3
aload 2
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 4
aload 1
aload 6
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
return
L0:
iconst_0
istore 3
goto L1
.limit locals 7
.limit stack 5
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
new android/support/v4/app/ShareCompat$IntentBuilder
dup
aload 0
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/<init>(Landroid/app/Activity;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public addEmailBcc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
ldc "android.intent.extra.BCC"
aload 1
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addEmailCc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
ldc "android.intent.extra.CC"
aload 1
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addEmailTo(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
ldc "android.intent.extra.EMAIL"
aload 1
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
astore 2
aload 2
ifnonnull L0
aload 0
aload 1
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
areturn
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
L1:
aload 2
ifnull L2
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/removeExtra(Ljava/lang/String;)V
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public createChooserIntent()Landroid/content/Intent;
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/getIntent()Landroid/content/Intent;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mChooserTitle Ljava/lang/CharSequence;
invokestatic android/content/Intent/createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
areturn
.limit locals 1
.limit stack 2
.end method

.method getActivity()Landroid/app/Activity;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIntent()Landroid/content/Intent;
iconst_1
istore 1
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
ifnull L0
aload 0
ldc "android.intent.extra.EMAIL"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
ifnull L1
aload 0
ldc "android.intent.extra.CC"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mCcAddresses Ljava/util/ArrayList;
L1:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
ifnull L2
aload 0
ldc "android.intent.extra.BCC"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
invokespecial android/support/v4/app/ShareCompat$IntentBuilder/combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mBccAddresses Ljava/util/ArrayList;
L2:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
ifnull L3
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmple L3
L4:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.SEND_MULTIPLE"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
iload 1
ifne L5
iload 2
ifeq L5
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.action.SEND"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
ifnull L6
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L6
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/os/Parcelable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
L7:
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
L5:
iload 1
ifeq L8
iload 2
ifne L8
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.action.SEND_MULTIPLE"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
ifnull L9
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L9
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
invokevirtual android/content/Intent/putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
L8:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
areturn
L3:
iconst_0
istore 1
goto L4
L6:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/removeExtra(Ljava/lang/String;)V
goto L7
L9:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/removeExtra(Ljava/lang/String;)V
goto L8
.limit locals 3
.limit stack 4
.end method

.method public setChooserTitle(I)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mActivity Landroid/app/Activity;
iload 1
invokevirtual android/app/Activity/getText(I)Ljava/lang/CharSequence;
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
areturn
.limit locals 2
.limit stack 3
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
aload 1
putfield android/support/v4/app/ShareCompat$IntentBuilder/mChooserTitle Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.BCC"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.CC"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
ifnull L0
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mToAddresses Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.EMAIL"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setHtmlText(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.HTML_TEXT"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.TEXT"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifne L0
aload 0
aload 1
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
pop
L0:
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
ldc "android.intent.action.SEND"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.action.SEND"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 0
aconst_null
putfield android/support/v4/app/ShareCompat$IntentBuilder/mStreams Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.STREAM"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setSubject(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.SUBJECT"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
ldc "android.intent.extra.TEXT"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mIntent Landroid/content/Intent;
aload 1
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public startChooser()V
aload 0
getfield android/support/v4/app/ShareCompat$IntentBuilder/mActivity Landroid/app/Activity;
aload 0
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/createChooserIntent()Landroid/content/Intent;
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 1
.limit stack 2
.end method
