.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/HelpUpdateActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/HelpUpdateActivity$1

.field protected static final 'TAG' Ljava/lang/String; = "HelpUpdateActivity"

.field private 'logo' Landroid/widget/ImageView;

.field private 'mTvAppName' Landroid/widget/TextView;

.field private 'mTvExplain' Landroid/widget/TextView;

.field private 'versionValue' [Ljava/lang/String;

.field private 'versionnum_value' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/HelpUpdateActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpUpdateActivity/copydatabase()V
return
.limit locals 1
.limit stack 1
.end method

.method private copydatabase()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/getPackageName()Ljava/lang/String;
astore 1
aload 0
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "data/data/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/databases/91uchat_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "91uchat_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokespecial com/nd/android/u/cloud/activity/HelpUpdateActivity/copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)V
aload 0
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "data/data/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/databases/91ucloud"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "91ucloud"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokespecial com/nd/android/u/cloud/activity/HelpUpdateActivity/copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 7
.end method

.method private copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L8
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L8:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L0
aload 3
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 2
invokevirtual java/io/File/delete()Z
pop
L0:
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 1
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
sipush 4096
newarray byte
astore 3
L1:
aload 1
aload 3
invokevirtual java/io/FileInputStream/read([B)I
istore 4
L3:
iload 4
ifle L6
L4:
aload 2
aload 3
iconst_0
iload 4
invokevirtual java/io/FileOutputStream/write([BII)V
L5:
goto L1
L2:
astore 1
ldc "readfile"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L6:
aload 1
invokevirtual java/io/FileInputStream/close()V
aload 2
invokevirtual java/io/FileOutputStream/close()V
L7:
return
.limit locals 5
.limit stack 4
.end method

.method private getVersionCode()[Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/getPackageManager()Landroid/content/pm/PackageManager;
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getPackagename()Ljava/lang/String;
sipush 16384
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield android/content/pm/PackageInfo/versionCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 2
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 2
L1:
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
areturn
L2:
astore 1
ldc "HelpUpdateActivity"
ldc "versionCode no fond"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131625572
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/HelpUpdateActivity/versionnum_value Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625568
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/HelpUpdateActivity/logo Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131625569
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/HelpUpdateActivity/mTvAppName Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625570
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/HelpUpdateActivity/mTvExplain Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131492910
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/mTvAppName Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/mTvExplain Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_ABOUT_EXPLAIN Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpUpdateActivity/getVersionCode()[Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/HelpUpdateActivity/versionValue [Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/versionValue [Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/versionnum_value Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/versionValue [Ljava/lang/String;
iconst_1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/HelpUpdateActivity/logo Landroid/widget/ImageView;
new com/nd/android/u/cloud/activity/HelpUpdateActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpUpdateActivity$1/<init>(Lcom/nd/android/u/cloud/activity/HelpUpdateActivity;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903395
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpUpdateActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
