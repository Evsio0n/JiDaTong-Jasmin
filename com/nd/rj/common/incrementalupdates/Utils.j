.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/Utils
.super java/lang/Object

.field private static final 'GOOD_IRI_CHAR' Ljava/lang/String; = "a-zA-Z0-9"

.field public static final 'WEB_URL' Ljava/util/regex/Pattern;

.method static <clinit>()V
ldc "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/rj/common/incrementalupdates/Utils/WEB_URL Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
.throws java/io/IOException
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L0:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
iload 2
ifeq L1
aload 1
invokevirtual java/io/File/delete()Z
pop
L1:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
sipush 4096
newarray byte
astore 4
L2:
aload 0
aload 4
invokevirtual java/io/FileInputStream/read([B)I
istore 3
iload 3
ifgt L3
aload 0
invokevirtual java/io/FileInputStream/close()V
aload 1
invokevirtual java/io/FileOutputStream/close()V
return
L3:
aload 1
aload 4
iconst_0
iload 3
invokevirtual java/io/FileOutputStream/write([BII)V
goto L2
.limit locals 5
.limit stack 4
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/Exception from L7 to L8 using L4
aload 0
invokevirtual java/io/File/isFile()Z
ifne L9
ldc ""
areturn
L9:
sipush 1024
newarray byte
astore 2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 3
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
L1:
aload 0
aload 2
iconst_0
sipush 1024
invokevirtual java/io/FileInputStream/read([BII)I
istore 1
L3:
iload 1
iconst_m1
if_icmpne L7
L5:
aload 0
invokevirtual java/io/FileInputStream/close()V
L6:
new java/lang/StringBuilder
dup
new java/math/BigInteger
dup
iconst_1
aload 3
invokevirtual java/security/MessageDigest/digest()[B
invokespecial java/math/BigInteger/<init>(I[B)V
bipush 16
invokevirtual java/math/BigInteger/toString(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 0
bipush 32
aload 0
invokevirtual java/lang/StringBuilder/length()I
isub
istore 1
L10:
iload 1
ifgt L11
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L7:
aload 3
aload 2
iconst_0
iload 1
invokevirtual java/security/MessageDigest/update([BII)V
L8:
goto L1
L4:
astore 0
L12:
ldc ""
areturn
L11:
aload 0
iconst_0
bipush 48
invokevirtual java/lang/StringBuilder/insert(IC)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
isub
istore 1
goto L10
L2:
astore 0
goto L12
.limit locals 4
.limit stack 6
.end method

.method public static getInstalledApkPath(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 1
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
sipush 128
invokevirtual android/content/pm/PackageManager/getInstalledApplications(I)Ljava/util/List;
astore 0
aload 0
ifnonnull L0
ldc ""
astore 0
L1:
aload 0
areturn
L0:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L3
ldc ""
areturn
L3:
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ApplicationInfo
astore 2
aload 1
aload 2
getfield android/content/pm/ApplicationInfo/packageName Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 2
getfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
astore 1
aload 1
astore 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L1
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 8
if_icmplt L3
aload 0
invokevirtual android/content/Context/getExternalCacheDir()Ljava/io/File;
ifnonnull L1
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
ldc "can not get external cache dir"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L1:
aload 0
invokevirtual android/content/Context/getExternalCacheDir()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/Utils/makesureFileSepInTheEnd(Ljava/lang/String;)Ljava/lang/String;
areturn
L3:
invokestatic com/nd/rj/common/incrementalupdates/Utils/isSdCardExist()Z
ifne L5
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
ldc "sd card is not exist"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L4:
ldc ""
areturn
L5:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/Android/data/%s/cache/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 0
L6:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 6
.end method

.method public static getSize(J)Ljava/lang/String;
lload 0
ldc2_w 1073741824L
lcmp
iflt L0
ldc "%.2fGB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1.07374182E9F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
lload 0
ldc2_w 1048576L
lcmp
iflt L1
ldc "%.2fMB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1048576.0F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
lload 0
ldc2_w 1024L
lcmp
iflt L2
ldc "%.2fKB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
ldc_w 1024.0F
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L2:
new java/lang/StringBuilder
dup
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "byte"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public static getVersionCode(Landroid/content/Context;)I
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionCode I
istore 1
L1:
iload 1
ireturn
L2:
astore 0
iconst_m1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static homeHidSoft(Landroid/content/Context;)V
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.HOME"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static isExternalStorageWriteable()Z
ldc "mounted"
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 0
.limit stack 2
.end method

.method public static isOnline(Landroid/content/Context;)Z
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isSdCardExist()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method public static isUrl(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/rj/common/incrementalupdates/Utils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isWifiConn(Landroid/content/Context;)Z
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
iconst_1
invokevirtual android/net/ConnectivityManager/getNetworkInfo(I)Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/isConnected()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static makesureFileSepInTheEnd(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
astore 1
aload 0
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L0
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
