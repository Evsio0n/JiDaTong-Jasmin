.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity
.super java/lang/Object
.inner class public static AppIdentity inner com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity outer com/nd/android/u/controller/bean/contact/BaseAppContactItem

.field private static final 'DELIMITER' C = 96


.field private 'mAppCode' Ljava/lang/String;

.field private 'mAppId' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppId Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppCode Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/parseDBStr(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$4(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private parseDBStr(Ljava/lang/String;)V
aload 1
bipush 96
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
invokestatic android/text/TextUtils/split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 1
arraylength
iconst_2
if_icmpeq L0
return
L0:
aload 0
aload 1
iconst_0
aaload
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppId Ljava/lang/String;
aload 0
aload 1
iconst_1
aaload
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppCode Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public toDBStr()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 96
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/mAppCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
