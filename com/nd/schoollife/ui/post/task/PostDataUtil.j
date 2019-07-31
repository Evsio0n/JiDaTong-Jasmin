.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/post/task/PostDataUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static buildPostInfo4CommunityHome(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch java/lang/InterruptedException from L9 to L10 using L2
.catch java/lang/InterruptedException from L11 to L12 using L2
.catch java/lang/InterruptedException from L13 to L14 using L2
.catch java/lang/InterruptedException from L15 to L16 using L2
.catch java/lang/InterruptedException from L17 to L18 using L2
.catch java/lang/InterruptedException from L18 to L19 using L2
.catch java/lang/InterruptedException from L20 to L21 using L2
.catch java/lang/InterruptedException from L22 to L23 using L2
.catch java/lang/InterruptedException from L24 to L25 using L2
.catch java/lang/InterruptedException from L26 to L27 using L2
.catch java/lang/InterruptedException from L28 to L29 using L2
.catch java/lang/InterruptedException from L30 to L31 using L2
.catch java/lang/InterruptedException from L31 to L32 using L2
.catch java/lang/InterruptedException from L33 to L34 using L2
new com/nd/android/forumsdk/business/bean/result/ResultPostList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultPostList/<init>()V
astore 6
L0:
ldc2_w 3000L
invokestatic java/lang/Thread/sleep(J)V
aload 6
iload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setTotal(I)V
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L1:
iconst_0
istore 3
L35:
iload 3
iload 2
if_icmpge L28
L3:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 8
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u738b\u5c0f\u9524"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 9
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 9
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 8
aload 9
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
l2i
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 8
iload 3
bipush 30
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraises(J)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 9
ldc "\u809a\u5b50\u997f\u4e86\uff0c\u60f3\u8d77\u4e86\u98df\u5802\u7684\u8089\u5305\uff0c\u597d\u597d\u5403\u554a\uff01\u5468\u672b\u6109\u5feb<M 317322>@\u9ec4\u7f8e\u7389</M>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "www.baidu.com"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "#TM\u4f01\u4e1a\u6587\u5316\u5c0f\u9ed1\u677f#[\u594b\u65971]\u4e0d\u505a\u7801\u519c\u505a\u81ea\u5df1\uff01 \u6709\u73a9\u8fc7\u8fd9\u4e2a\u6e38\u620f\u7684\u540c\u5b66\u4e00\u5b9a\u90fd\u61c2\u5f97\u5176\u4e2d\u7684\u6b63\u80fd\u91cf\u5427~~~[\u9f13\u638c1]\u8d5e\u4e00\u4e2a\uff01"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "\u81ea\u5236\u571f\u8c46\u6ce5[\u82724]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 8
ldc2_w 100L
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L4:
iconst_0
istore 4
L36:
iload 4
iconst_4
if_icmpge L7
L5:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 11
aload 11
iload 4
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 4
iconst_1
iadd
istore 4
goto L36
L7:
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
L8:
iload 3
iconst_2
irem
ifne L37
iconst_1
istore 4
L9:
aload 8
iload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
new com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/<init>()V
astore 10
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xxx\u5c0f\u7ec4\u6216\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/setName(Ljava/lang/String;)V
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 100000L
lsub
iload 3
i2l
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L10:
iconst_0
istore 4
L38:
iload 4
iconst_2
if_icmpge L26
L11:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 11
aload 11
iload 4
bipush 99
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
new com/nd/android/forumsdk/business/bean/structure/UserInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/UserInfoBean/<init>()V
astore 12
L12:
iload 4
iconst_1
if_icmpne L22
L13:
aload 12
iload 4
bipush 123
iadd
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 12
ldc "\u661f\u7235@-@"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 12
L14:
iconst_0
istore 5
L39:
iload 5
iconst_2
if_icmpge L17
L15:
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
astore 13
aload 13
iload 5
sipush 12321
iadd
i2l
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 12
aload 13
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L16:
iload 5
iconst_1
iadd
istore 5
goto L39
L17:
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L18:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 12
L19:
iconst_0
istore 5
L40:
iload 5
iload 3
iconst_5
iadd
if_icmpge L24
L20:
new com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/<init>()V
astore 13
aload 13
ldc "4134"
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setRid(Ljava/lang/String;)V
aload 13
ldc "\u8bc4\u8bba\u8bc4\u8bba\u8bc4\u8bba"
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/setContent(Ljava/lang/String;)V
aload 12
aload 13
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L21:
iload 5
iconst_1
iadd
istore 5
goto L40
L22:
aload 12
bipush 123
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setSysavatar(I)V
aload 12
ldc "\u7cbe\u94a2\u72fc"
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setNickname(Ljava/lang/String;)V
aload 12
ldc2_w 36917L
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/setUid(J)V
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u54c8\u54c8\u54c8\uff0c\u679c\u7136\u662f\u795e\u8d34!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 11
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
L23:
goto L18
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 6
areturn
L24:
aload 11
aload 12
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReply_info(Ljava/util/List;)V
aload 10
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L25:
iload 4
iconst_1
iadd
istore 4
goto L38
L26:
aload 8
aload 10
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L27:
iload 3
iconst_1
iadd
istore 3
goto L35
L28:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setData(Ljava/util/List;)V
L29:
lload 0
ldc2_w 88L
lcmp
ifne L33
L30:
aload 6
sipush 400
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
L31:
aload 6
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setMax_ts(J)V
aload 6
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
ldc2_w 10000L
lsub
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setMin_ts(J)V
aload 6
ldc "\u67e5\u8be2\u5217\u8868\u6210\u529f"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultMsg(Ljava/lang/String;)V
L32:
aload 6
areturn
L33:
aload 6
sipush 200
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPostList/setResultCode(I)V
L34:
goto L31
L37:
iconst_0
istore 4
goto L9
.limit locals 14
.limit stack 5
.end method
