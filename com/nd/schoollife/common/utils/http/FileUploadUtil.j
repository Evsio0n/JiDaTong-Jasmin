.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/http/FileUploadUtil
.super java/lang/Object
.inner class public static UploadEntity inner com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity outer com/nd/schoollife/common/utils/http/FileUploadUtil

.field public static final 'DEFAULT_PACKAGESIZE' I = 512000


.field public static final 'MIN_PACKAGESIZE' I = 307200


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static relogin(Ljava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static uploadFile(Lcom/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L12
.catch all from L10 to L11 using L13
.catch java/io/IOException from L14 to L15 using L16
.catch all from L14 to L15 using L17
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L20
.catch java/io/IOException from L23 to L24 using L20
.catch java/io/IOException from L25 to L26 using L16
.catch all from L25 to L26 using L17
.catch java/io/IOException from L27 to L28 using L16
.catch all from L27 to L28 using L17
.catch java/io/IOException from L29 to L30 using L16
.catch all from L29 to L30 using L17
.catch java/io/IOException from L31 to L32 using L16
.catch all from L31 to L32 using L17
.catch java/io/IOException from L33 to L34 using L16
.catch all from L33 to L34 using L17
.catch java/io/IOException from L35 to L36 using L16
.catch all from L35 to L36 using L17
.catch java/io/IOException from L37 to L38 using L16
.catch all from L37 to L38 using L17
.catch java/io/IOException from L39 to L40 using L16
.catch all from L39 to L40 using L17
.catch java/io/IOException from L41 to L42 using L16
.catch all from L41 to L42 using L17
.catch java/io/IOException from L43 to L44 using L16
.catch all from L43 to L44 using L17
.catch java/io/IOException from L45 to L46 using L16
.catch all from L45 to L46 using L17
.catch java/io/IOException from L47 to L48 using L16
.catch all from L47 to L48 using L17
.catch java/io/IOException from L49 to L50 using L16
.catch all from L49 to L50 using L17
.catch java/io/IOException from L51 to L52 using L16
.catch all from L51 to L52 using L17
.catch java/io/IOException from L53 to L54 using L16
.catch all from L53 to L54 using L17
.catch java/io/IOException from L55 to L56 using L16
.catch all from L55 to L56 using L17
.catch java/io/IOException from L57 to L58 using L16
.catch all from L57 to L58 using L17
.catch java/io/IOException from L59 to L60 using L16
.catch all from L59 to L60 using L17
.catch java/io/IOException from L61 to L62 using L16
.catch all from L61 to L62 using L17
.catch java/io/IOException from L63 to L64 using L16
.catch all from L63 to L64 using L17
.catch java/io/IOException from L65 to L66 using L16
.catch all from L65 to L66 using L17
.catch java/io/IOException from L67 to L68 using L16
.catch all from L67 to L68 using L17
.catch java/io/IOException from L69 to L70 using L16
.catch all from L69 to L70 using L17
.catch java/io/IOException from L71 to L72 using L16
.catch all from L71 to L72 using L17
.catch java/io/IOException from L73 to L74 using L16
.catch all from L73 to L74 using L17
.catch java/io/IOException from L75 to L76 using L16
.catch all from L75 to L76 using L17
.catch all from L77 to L78 using L3
.catch all from L79 to L80 using L3
.catch all from L81 to L82 using L3
.catch java/io/IOException from L83 to L84 using L85
.catch java/io/IOException from L86 to L87 using L85
.catch java/io/IOException from L88 to L89 using L85
.catch java/io/IOException from L90 to L91 using L16
.catch all from L90 to L91 using L17
.catch java/io/IOException from L92 to L93 using L94
.catch java/io/IOException from L95 to L96 using L94
.catch java/io/IOException from L97 to L98 using L94
.catch java/io/IOException from L99 to L100 using L16
.catch all from L99 to L100 using L17
.catch java/io/IOException from L100 to L101 using L102
.catch all from L100 to L101 using L103
.catch java/io/IOException from L104 to L105 using L102
.catch all from L104 to L105 using L103
.catch java/io/IOException from L105 to L106 using L102
.catch all from L105 to L106 using L103
.catch java/io/IOException from L107 to L108 using L12
.catch all from L107 to L108 using L13
.catch java/io/IOException from L109 to L110 using L12
.catch all from L109 to L110 using L13
.catch java/io/IOException from L111 to L112 using L12
.catch all from L111 to L112 using L13
.catch java/io/IOException from L113 to L114 using L12
.catch all from L113 to L114 using L13
.catch java/lang/Exception from L115 to L116 using L117
.catch java/io/IOException from L115 to L116 using L12
.catch all from L115 to L116 using L13
.catch java/lang/Exception from L118 to L119 using L117
.catch java/io/IOException from L118 to L119 using L12
.catch all from L118 to L119 using L13
.catch java/lang/Exception from L120 to L121 using L117
.catch java/io/IOException from L120 to L121 using L12
.catch all from L120 to L121 using L13
.catch java/lang/Exception from L122 to L123 using L117
.catch java/io/IOException from L122 to L123 using L12
.catch all from L122 to L123 using L13
.catch java/lang/Exception from L124 to L125 using L117
.catch java/io/IOException from L124 to L125 using L12
.catch all from L124 to L125 using L13
.catch java/lang/Exception from L126 to L127 using L117
.catch java/io/IOException from L126 to L127 using L12
.catch all from L126 to L127 using L13
.catch java/lang/Exception from L128 to L129 using L117
.catch java/io/IOException from L128 to L129 using L12
.catch all from L128 to L129 using L13
.catch java/lang/Exception from L130 to L131 using L117
.catch java/io/IOException from L130 to L131 using L12
.catch all from L130 to L131 using L13
.catch java/lang/Exception from L132 to L133 using L117
.catch java/io/IOException from L132 to L133 using L12
.catch all from L132 to L133 using L13
.catch java/lang/Exception from L134 to L135 using L117
.catch java/io/IOException from L134 to L135 using L12
.catch all from L134 to L135 using L13
.catch java/lang/Exception from L136 to L137 using L117
.catch java/io/IOException from L136 to L137 using L12
.catch all from L136 to L137 using L13
.catch java/io/IOException from L138 to L139 using L140
.catch java/io/IOException from L141 to L142 using L140
.catch java/io/IOException from L143 to L144 using L140
.catch java/lang/Exception from L145 to L146 using L117
.catch java/io/IOException from L145 to L146 using L12
.catch all from L145 to L146 using L13
.catch java/io/IOException from L147 to L148 using L12
.catch all from L147 to L148 using L13
.catch java/io/IOException from L149 to L150 using L12
.catch all from L149 to L150 using L13
.catch java/io/IOException from L151 to L152 using L12
.catch all from L151 to L152 using L13
.catch java/lang/Exception from L153 to L154 using L117
.catch java/io/IOException from L153 to L154 using L12
.catch all from L153 to L154 using L13
.catch java/lang/Exception from L155 to L156 using L117
.catch java/io/IOException from L155 to L156 using L12
.catch all from L155 to L156 using L13
.catch java/lang/Exception from L157 to L158 using L117
.catch java/io/IOException from L157 to L158 using L12
.catch all from L157 to L158 using L13
.catch java/io/IOException from L159 to L160 using L161
.catch java/io/IOException from L162 to L163 using L161
.catch java/io/IOException from L164 to L165 using L161
aconst_null
astore 7
aconst_null
astore 13
aconst_null
astore 9
aconst_null
astore 19
aconst_null
astore 14
aconst_null
astore 8
aconst_null
astore 17
aconst_null
astore 18
aconst_null
astore 20
aconst_null
astore 15
aconst_null
astore 6
aload 0
ifnonnull L166
L167:
aconst_null
areturn
L166:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/file Ljava/io/File;
astore 21
aconst_null
astore 16
aload 21
ifnonnull L168
aconst_null
areturn
L168:
aload 21
invokevirtual java/io/File/length()J
lstore 3
aload 20
astore 12
aload 7
astore 11
aload 19
astore 10
L0:
aload 21
invokestatic com/nd/android/forumsdk/business/com/httptool/MD5Arithmetic/getFileMD5String(Ljava/io/File;)Ljava/lang/String;
astore 22
L1:
aload 20
astore 12
aload 7
astore 11
aload 19
astore 10
L4:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
newarray byte
astore 23
L5:
aload 20
astore 12
aload 7
astore 11
aload 19
astore 10
L6:
new java/net/URL
dup
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/url Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 24
L7:
aload 20
astore 12
aload 7
astore 11
aload 19
astore 10
L8:
new java/io/FileInputStream
dup
aload 21
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 7
L9:
aload 18
astore 13
aload 9
astore 12
L10:
aload 7
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
invokevirtual java/io/InputStream/skip(J)J
pop2
L11:
ldc ""
astore 9
aconst_null
astore 10
aconst_null
astore 8
aload 16
astore 11
L169:
aload 6
astore 12
aload 6
astore 13
L14:
aload 7
aload 23
iconst_0
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
invokevirtual java/io/InputStream/read([BII)I
istore 1
L15:
iconst_m1
iload 1
if_icmpne L170
aload 7
ifnull L19
L18:
aload 7
invokevirtual java/io/InputStream/close()V
L19:
aload 10
ifnull L22
L21:
aload 10
invokevirtual java/io/DataOutputStream/close()V
L22:
aload 6
ifnull L24
L23:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L24:
aload 11
areturn
L20:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L24
L170:
aload 6
astore 12
aload 6
astore 13
L25:
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 14
L26:
aload 6
astore 12
aload 6
astore 13
L27:
aload 24
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 6
L28:
aload 6
astore 12
aload 6
astore 13
L29:
aload 6
ldc_w 60000
invokevirtual java/net/HttpURLConnection/setReadTimeout(I)V
L30:
aload 6
astore 12
aload 6
astore 13
L31:
aload 6
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
L32:
aload 6
astore 12
aload 6
astore 13
L33:
aload 6
iconst_1
invokevirtual java/net/HttpURLConnection/setDoOutput(Z)V
L34:
aload 6
astore 12
aload 6
astore 13
L35:
aload 6
iconst_1
invokevirtual java/net/HttpURLConnection/setUseCaches(Z)V
L36:
aload 6
astore 12
aload 6
astore 13
L37:
aload 6
ldc "Cookie"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OAPSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/oapSid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L38:
aload 6
astore 12
aload 6
astore 13
L39:
aload 6
ldc "APPID"
ldc "APPID=123"
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L40:
aload 6
astore 12
aload 6
astore 13
L41:
aload 6
ldc "POST"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L42:
aload 6
astore 12
aload 6
astore 13
L43:
aload 6
ldc "Content-Type"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "multipart/form-data"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";boundary="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L44:
aload 6
astore 12
aload 6
astore 13
L45:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 8
L46:
aload 6
astore 12
aload 6
astore 13
L47:
aload 8
ldc "offset"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L48:
aload 6
astore 12
aload 6
astore 13
L49:
aload 9
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L52
L50:
aload 6
astore 12
aload 6
astore 13
L51:
aload 8
ldc "ticket"
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L52:
aload 6
astore 12
aload 6
astore 13
L53:
iload 1
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
if_icmpne L171
L54:
iload 1
i2l
lload 3
lcmp
ifne L172
L171:
aload 6
astore 12
aload 6
astore 13
L55:
aload 8
ldc "flag"
ldc "0"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L56:
aload 6
astore 12
aload 6
astore 13
L57:
aload 8
ldc "filesize"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L58:
aload 6
astore 12
aload 6
astore 13
L59:
aload 8
ldc "md5"
aload 22
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L60:
aload 6
astore 12
aload 6
astore 13
L61:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 15
L62:
aload 6
astore 12
aload 6
astore 13
L63:
aload 8
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 8
L64:
aload 6
astore 12
aload 6
astore 13
L65:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L173
L66:
aload 6
astore 12
aload 6
astore 13
L67:
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 16
L68:
aload 6
astore 12
aload 6
astore 13
L69:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L70:
aload 6
astore 12
aload 6
astore 13
L71:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Content-Disposition: form-data; name=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 16
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L72:
aload 6
astore 12
aload 6
astore 13
L73:
aload 15
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L74:
aload 6
astore 12
aload 6
astore 13
L75:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 16
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L76:
goto L64
L16:
astore 9
aload 10
astore 8
aload 12
astore 6
L174:
aload 6
astore 12
aload 7
astore 11
aload 8
astore 10
L77:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uploadFileUpdate : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/nowTry I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " time, error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", uploadEntity.packageSize : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
L78:
aload 0
ifnull L82
aload 6
astore 12
aload 7
astore 11
aload 8
astore 10
L79:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L82
L80:
aload 6
astore 12
aload 7
astore 11
aload 8
astore 10
L81:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
aload 9
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L82:
aload 7
ifnull L84
L83:
aload 7
invokevirtual java/io/InputStream/close()V
L84:
aload 8
ifnull L87
L86:
aload 8
invokevirtual java/io/DataOutputStream/close()V
L87:
aload 6
ifnull L167
L88:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L89:
aconst_null
areturn
L85:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L172:
aload 6
astore 12
aload 6
astore 13
L90:
aload 8
ldc "flag"
ldc "1"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L91:
goto L56
L17:
astore 6
aload 10
astore 8
aload 7
astore 0
aload 6
astore 7
aload 13
astore 6
L175:
aload 0
ifnull L93
L92:
aload 0
invokevirtual java/io/InputStream/close()V
L93:
aload 8
ifnull L96
L95:
aload 8
invokevirtual java/io/DataOutputStream/close()V
L96:
aload 6
ifnull L98
L97:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L98:
aload 7
athrow
L173:
aload 6
astore 12
aload 6
astore 13
L99:
new java/io/DataOutputStream
dup
aload 6
invokevirtual java/net/HttpURLConnection/getOutputStream()Ljava/io/OutputStream;
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 8
L100:
aload 8
aload 15
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L101:
aload 21
ifnull L105
L104:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Content-Disposition: form-data; name=\"photo\"; filename=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 21
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Content-Type: image/jpeg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 8
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
aload 8
aload 23
iconst_0
iload 1
invokevirtual java/io/DataOutputStream/write([BII)V
aload 8
ldc "\r\n"
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
L105:
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
aload 8
invokevirtual java/io/DataOutputStream/flush()V
aload 6
invokevirtual java/net/HttpURLConnection/getResponseCode()I
istore 2
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 6
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 20
L106:
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L107:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 25
L108:
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L109:
aload 20
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 10
L110:
aload 10
ifnull L176
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L111:
aload 25
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L112:
goto L108
L176:
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L113:
aload 25
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 5
L114:
aload 11
astore 19
aload 9
astore 16
iload 5
ifne L177
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L115:
ldc "FileUploadUtil uploadFile"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "json : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 25
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L116:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L118:
new org/json/JSONObject
dup
aload 25
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 16
L119:
iload 2
sipush 200
if_icmpeq L178
iload 2
sipush 201
if_icmpne L179
L178:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L120:
aload 0
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
iload 1
i2l
ladd
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
L121:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L122:
aload 16
ldc "ticket"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L180
L123:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L124:
aload 16
ldc "ticket"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 10
L125:
aload 11
astore 17
aload 10
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
aload 11
astore 19
aload 10
astore 16
L126:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L177
L127:
aload 11
astore 17
aload 10
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L128:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
lload 3
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onProgressed(JJ)V 4
L129:
aload 11
astore 19
aload 10
astore 16
goto L177
L180:
aload 9
astore 10
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L130:
aload 16
ldc "fkey"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L125
L131:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L132:
aload 16
ldc "fkey"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 10
L133:
aload 10
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L134:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L137
L135:
aload 10
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L136:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
aload 10
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onSuccess(Ljava/lang/String;)V 1
L137:
aload 7
ifnull L139
L138:
aload 7
invokevirtual java/io/InputStream/close()V
L139:
aload 8
ifnull L142
L141:
aload 8
invokevirtual java/io/DataOutputStream/close()V
L142:
aload 6
ifnull L144
L143:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L144:
aload 10
areturn
L140:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L144
L179:
iload 2
sipush 401
if_icmpne L181
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L145:
aload 0
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/oapSid Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/http/FileUploadUtil/relogin(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/oapSid Ljava/lang/String;
L146:
aload 11
astore 19
aload 9
astore 16
goto L177
L117:
astore 9
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
aload 17
astore 19
aload 18
astore 16
L147:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L177
L148:
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L149:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "responseJson : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 25
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", error : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "**"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
L150:
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L151:
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
iload 2
aload 0
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/url Ljava/lang/String;
ldc "999"
aload 9
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L152:
aload 17
astore 19
aload 18
astore 16
goto L177
L13:
astore 9
aload 7
astore 0
aload 13
astore 6
aload 12
astore 8
aload 9
astore 7
goto L175
L181:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L153:
aload 0
iload 2
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/httpCode I
L154:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L155:
aload 0
aload 16
ldc "error_code"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errCode Ljava/lang/String;
L156:
aload 11
astore 17
aload 9
astore 18
aload 6
astore 13
aload 8
astore 12
aload 6
astore 15
aload 8
astore 14
L157:
aload 0
aload 16
ldc "err_msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errMsg Ljava/lang/String;
L158:
aload 7
ifnull L160
L159:
aload 7
invokevirtual java/io/InputStream/close()V
L160:
aload 8
ifnull L163
L162:
aload 8
invokevirtual java/io/DataOutputStream/close()V
L163:
aload 6
ifnull L165
L164:
aload 6
invokevirtual java/net/HttpURLConnection/disconnect()V
L165:
aconst_null
areturn
L161:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L165
L94:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L98
L3:
astore 7
aload 12
astore 6
aload 11
astore 0
aload 10
astore 8
goto L175
L103:
astore 9
aload 7
astore 0
aload 9
astore 7
goto L175
L2:
astore 9
aload 17
astore 6
aload 13
astore 7
goto L174
L102:
astore 9
goto L174
L12:
astore 9
aload 15
astore 6
aload 14
astore 8
goto L174
L177:
aload 8
astore 10
aload 20
astore 8
aload 19
astore 11
aload 16
astore 9
goto L169
.limit locals 26
.limit stack 5
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/schoollife/common/utils/http/IFileUploadListener;)Ljava/lang/String;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
new com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity
dup
invokespecial com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/<init>()V
astore 6
aload 4
ifnull L8
aload 6
aload 4
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
L8:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L10
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
ldc "url\u4e3a\u7a7a"
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L10:
aconst_null
areturn
L9:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L12
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
ldc "filePath\u4e3a\u7a7a"
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L12:
aconst_null
areturn
L11:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L13
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L14
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
ldc "biz\u4e3a\u7a7a"
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L14:
aconst_null
areturn
L13:
aload 6
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/file Ljava/io/File;
aload 6
aload 2
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/oapSid Ljava/lang/String;
aload 6
aload 0
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/url Ljava/lang/String;
iconst_0
istore 5
L0:
iload 5
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/repeatTimes I
if_icmpge L6
aload 6
iload 5
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/nowTry I
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
ldc_w 307200
if_icmpge L1
aload 6
ldc_w 307200
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
L1:
aload 6
invokestatic com/nd/schoollife/common/utils/http/FileUploadUtil/uploadFile(Lcom/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity;)Ljava/lang/String;
astore 0
L3:
aload 0
ifnull L15
L4:
aload 6
iconst_1
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/isUploadSuccess Z
L5:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L16
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload fail : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L16:
aconst_null
areturn
L15:
iload 5
iconst_1
iadd
istore 5
goto L0
L6:
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/isUploadSuccess Z
ifne L17
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L7
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/httpCode I
ldc ""
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errCode Ljava/lang/String;
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errMsg Ljava/lang/String;
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L7:
aconst_null
areturn
L17:
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
ifnull L18
aload 6
getfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
sipush 400
ldc ""
ldc "999"
ldc "upload file end fail"
invokeinterface com/nd/schoollife/common/utils/http/IFileUploadListener/onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 4
L18:
aconst_null
areturn
.limit locals 7
.limit stack 6
.end method
