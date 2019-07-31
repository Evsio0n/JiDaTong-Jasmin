.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/UrlUtils
.super java/lang/Object

.field public static final 'ALL_PATTERN_URL' Ljava/util/regex/Pattern;

.field private static final 'GOOD_IRI_CHAR' Ljava/lang/String; = "a-zA-Z0-9"

.field private static final 'KEY_TAG' Ljava/lang/String; = "&k="

.field public static final 'PHONE_URL' Ljava/util/regex/Pattern;

.field public static 'PHONE_URL_STR' Ljava/lang/String;

.field private static final 'TAG' Ljava/lang/String; = "UrlUtils"

.field public static final 'TEL_PHONE_URL' Ljava/util/regex/Pattern;

.field private static final 'UID_TAG' Ljava/lang/String; = "?uid="

.field public static final 'WEB_URL' Ljava/util/regex/Pattern;

.field public static 'WEB_URL_STR' Ljava/lang/String;

.method static <clinit>()V
ldc "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"
putstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL_STR Ljava/lang/String;
ldc "((((\\+86)|(86))?(1[3|5|7|8|][0-9]{9}))|(1[3|5|7|8|][0-9]{9})|((400|800)([0-9\\-]{7,10})|(9[0-9]{4})|(100[0-9]{2})|(([0-9]{4}|[0-9]{3})(-| )?)?([0-9]{7,8})((-| |\u8f6c)*([0-9]{1,4}))?))"
putstatic com/nd/android/u/allCommonUtils/UrlUtils/PHONE_URL_STR Ljava/lang/String;
getstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL_STR Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
getstatic com/nd/android/u/allCommonUtils/UrlUtils/PHONE_URL_STR Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/android/u/allCommonUtils/UrlUtils/PHONE_URL Ljava/util/regex/Pattern;
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/allCommonUtils/UrlUtils/PHONE_URL_STR Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL_STR Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/android/u/allCommonUtils/UrlUtils/ALL_PATTERN_URL Ljava/util/regex/Pattern;
ldc "^(((0[0-9]{2,3})(-| )?)?)([2-9][0-9]{6,7})$"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/android/u/allCommonUtils/UrlUtils/TEL_PHONE_URL Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static completeUrl(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
astore 1
L1:
aload 1
areturn
L0:
aload 0
astore 1
aload 0
ldc "ftp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 0
astore 1
aload 0
ldc "Ftp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 0
astore 1
aload 0
invokestatic android/webkit/URLUtil/isNetworkUrl(Ljava/lang/String;)Z
ifne L1
new java/lang/StringBuilder
dup
ldc "http://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getFileUri(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "file://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
L0:
aload 0
iconst_1
aaload
ldc "k="
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getUidFromUrl(Ljava/lang/String;)J
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
aload 0
ldc "?uid="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 0
ldc "&k="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 1
iflt L4
iload 2
ifge L0
L4:
lconst_0
lreturn
L0:
aload 0
ldc "?uid="
invokevirtual java/lang/String/length()I
iload 1
iadd
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L1:
lload 3
lreturn
L2:
astore 0
ldc "UrlUtils"
ldc "get uid index out of bounds"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual java/lang/StringIndexOutOfBoundsException/printStackTrace()V
lconst_0
lreturn
L3:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
lconst_0
lreturn
.limit locals 5
.limit stack 3
.end method

.method public static isHtml(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isPhone(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/android/u/allCommonUtils/UrlUtils/PHONE_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isTelPhone(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/android/u/allCommonUtils/UrlUtils/TEL_PHONE_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isUrl(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
getstatic com/nd/android/u/allCommonUtils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static final makeUrl(Ljava/lang/String;)Ljava/lang/String;
iconst_3
anewarray java/lang/String
astore 6
aload 6
iconst_0
ldc "http://"
aastore
aload 6
iconst_1
ldc "https://"
aastore
aload 6
iconst_2
ldc "rtsp://"
aastore
aload 0
astore 5
aload 0
ldc "ftp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
aload 0
astore 5
aload 0
ldc "Ftp"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
iconst_0
istore 2
iconst_0
istore 1
L1:
iload 1
aload 6
arraylength
if_icmplt L2
aload 0
astore 4
L3:
aload 4
astore 5
iload 2
ifne L0
new java/lang/StringBuilder
dup
aload 6
iconst_0
aaload
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L0:
aload 5
areturn
L2:
aload 0
iconst_1
iconst_0
aload 6
iload 1
aaload
iconst_0
aload 6
iload 1
aaload
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/regionMatches(ZILjava/lang/String;II)Z
ifeq L4
iconst_1
istore 3
iload 3
istore 2
aload 0
astore 4
aload 0
iconst_0
iconst_0
aload 6
iload 1
aaload
iconst_0
aload 6
iload 1
aaload
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/regionMatches(ZILjava/lang/String;II)Z
ifne L3
new java/lang/StringBuilder
dup
aload 6
iload 1
aaload
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
aload 6
iload 1
aaload
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
iload 3
istore 2
goto L3
L4:
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 7
.limit stack 7
.end method
