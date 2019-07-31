.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSModleMgr
.super java/lang/Object

.field public static final 'SNSMDL_FOLLOW_OPT_FAILURE' I = 0


.field public static final 'SNSMDL_FOLLOW_OPT_NULL' I = -1


.field public static final 'SNSMDL_FOLLOW_OPT_SUCCESS' I = 1


.field private static final 'SNSMDL_IS_FOLLOWED' I = 11


.field public static final 'SNSMDL_NET_ERROR' I = 0


.field public static final 'SNSMDL_NET_SUCCESS' I = 1


.field private static final 'SNSMDL_NO_FOLLOW' I = 10


.field private static 'm_snsModleMgr' Lcom/nd/rj/common/microblogging/SNSModleMgr;

.field private 'context' Landroid/content/Context;

.field private 'mConfigSet' Lcom/nd/rj/common/microblogging/help/ConfigSet;

.field private 'm_SvrInterface' Lcom/nd/rj/common/microblogging/ServerInterface;

.field private 'm_appCode' Ljava/lang/String;

.field private 'm_bSending' Z

.field private 'm_nAppId' I

.field private 'm_sendBitMap' Landroid/graphics/Bitmap;

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/microblogging/SNSModleMgr/m_snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSModleMgr/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_sendBitMap Landroid/graphics/Bitmap;
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_nAppId I
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSModleMgr/context Landroid/content/Context;
aload 0
new com/nd/rj/common/microblogging/help/ConfigSet
dup
aload 1
invokespecial com/nd/rj/common/microblogging/help/ConfigSet/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 0
aload 1
invokestatic com/nd/rj/common/microblogging/ServerInterface/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ServerInterface;
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
return
.limit locals 2
.limit stack 4
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
getstatic com/nd/rj/common/microblogging/SNSModleMgr/m_snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
ifnonnull L0
new com/nd/rj/common/microblogging/SNSModleMgr
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSModleMgr/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/microblogging/SNSModleMgr/m_snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
L0:
getstatic com/nd/rj/common/microblogging/SNSModleMgr/m_snsModleMgr Lcom/nd/rj/common/microblogging/SNSModleMgr;
areturn
.limit locals 1
.limit stack 3
.end method

.method public FollowUser(ILjava/lang/String;Z)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
iload 3
invokevirtual com/nd/rj/common/microblogging/ServerInterface/followUser(ILjava/lang/String;Z)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public GetAppId()I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_nAppId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public GetBindUrl(I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
invokevirtual com/nd/rj/common/microblogging/ServerInterface/getBindUrl(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public GetBitMap()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_sendBitMap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method ProcessFollow(IZ)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
ifne L0
iconst_m1
ireturn
L0:
iload 1
invokestatic com/nd/rj/common/microblogging/SNSShare/getSnsFollowUserName(I)Ljava/lang/String;
astore 7
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/containsFollowState(I)Z
ifne L1
iload 2
ifne L1
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveFollowState(IZ)V
L1:
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getFollowState(IZ)Z
istore 6
aload 0
iload 1
aload 7
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/isFollowUser(ILjava/lang/String;)I
istore 5
iconst_m1
istore 4
iload 5
bipush 11
if_icmpne L2
iload 2
ifeq L3
iconst_1
istore 3
L4:
iload 3
istore 4
iload 3
iconst_m1
if_icmpne L5
aload 0
iload 1
aload 7
iload 2
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/FollowUser(ILjava/lang/String;Z)I
ifne L6
iconst_1
istore 4
L5:
iload 4
iconst_1
if_icmpne L7
iload 2
iload 6
if_icmpeq L8
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iload 2
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveFollowState(IZ)V
iconst_1
ireturn
L3:
iconst_m1
istore 3
goto L4
L2:
iload 4
istore 3
iload 5
bipush 10
if_icmpne L4
iload 4
istore 3
iload 2
ifne L4
iconst_1
istore 3
goto L4
L6:
iconst_0
istore 4
goto L5
L8:
iconst_m1
ireturn
L7:
iconst_0
ireturn
.limit locals 8
.limit stack 4
.end method

.method public SendContent(ILjava/lang/String;Ljava/io/File;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
ifeq L0
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/isLogin()Z
ifne L1
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
L1:
aload 3
ifnull L2
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
aload 3
invokevirtual com/nd/rj/common/microblogging/ServerInterface/shareImageText(ILjava/lang/String;Ljava/io/File;)I
istore 1
L3:
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
iload 1
ireturn
L2:
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
invokevirtual com/nd/rj/common/microblogging/ServerInterface/shareText(ILjava/lang/String;)I
istore 1
goto L3
L0:
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
getstatic com/nd/rj/common/R$string/sns_sending I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public SendContentByBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
ifeq L0
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/isLogin()Z
ifne L1
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
L1:
aload 3
ifnull L2
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
aload 3
invokevirtual com/nd/rj/common/microblogging/ServerInterface/shareBitMapText(ILjava/lang/String;Landroid/graphics/Bitmap;)I
istore 1
L3:
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
iload 1
ireturn
L2:
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
invokevirtual com/nd/rj/common/microblogging/ServerInterface/shareText(ILjava/lang/String;)I
istore 1
goto L3
L0:
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
getstatic com/nd/rj/common/R$string/sns_sending I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public SetAppCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_appCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public SetAppId(I)V
aload 0
iload 1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_nAppId I
return
.limit locals 2
.limit stack 2
.end method

.method public SetBitMap(Landroid/graphics/Bitmap;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSModleMgr/m_sendBitMap Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method checkFollow(I)Z
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
ifne L0
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getFollowState(IZ)Z
ireturn
L0:
aload 0
iload 1
iload 1
invokestatic com/nd/rj/common/microblogging/SNSShare/getSnsFollowUserName(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/isFollowUser(ILjava/lang/String;)I
istore 2
iload 2
bipush 11
if_icmpne L1
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveFollowState(IZ)V
iconst_1
ireturn
L1:
iload 2
bipush 10
if_icmpne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveFollowState(IZ)V
iconst_0
ireturn
L2:
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getFollowState(IZ)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getAppCode()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_appCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isFollowUser(ILjava/lang/String;)I
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 2
aload 3
invokevirtual com/nd/rj/common/microblogging/ServerInterface/isFollowedUser(ILjava/lang/String;Ljava/lang/StringBuffer;)I
ifne L0
bipush 11
ireturn
L0:
aload 3
ifnull L1
aload 3
invokevirtual java/lang/StringBuffer/length()I
ifle L1
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
ldc "this user does not exist or u do not follow this user"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
bipush 10
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public isSending()Z
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_bSending Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public login()I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/context Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
iconst_0
invokevirtual com/nd/rj/common/microblogging/ConfigFile/getIdentifyID(Z)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_nAppId I
aload 1
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_appCode Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/loginByDeviceID(ILjava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public loginOut()V
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/loginOut()V
return
.limit locals 1
.limit stack 1
.end method

.method public querybind(I)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/isLogin()Z
ifne L0
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
L0:
new com/nd/rj/common/microblogging/SNSUserInfo
dup
invokespecial com/nd/rj/common/microblogging/SNSUserInfo/<init>()V
astore 4
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 4
invokevirtual com/nd/rj/common/microblogging/ServerInterface/queryBind(ILcom/nd/rj/common/microblogging/SNSUserInfo;)I
istore 3
iload 3
istore 2
iload 3
sipush 409
if_icmpne L1
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
aload 4
invokevirtual com/nd/rj/common/microblogging/ServerInterface/queryBind(ILcom/nd/rj/common/microblogging/SNSUserInfo;)I
istore 2
L1:
iload 2
ifne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
aload 4
invokevirtual com/nd/rj/common/microblogging/SNSUserInfo/getUserNick()Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/saveUserNick(ILjava/lang/String;)V
L2:
iload 2
ireturn
.limit locals 5
.limit stack 3
.end method

.method public unbind(I)I
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/isLogin()Z
ifne L0
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
invokevirtual com/nd/rj/common/microblogging/ServerInterface/unbind(I)I
istore 3
iload 3
istore 2
iload 3
sipush 409
if_icmpne L1
aload 0
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/login()I
pop
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/m_SvrInterface Lcom/nd/rj/common/microblogging/ServerInterface;
iload 1
invokevirtual com/nd/rj/common/microblogging/ServerInterface/unbind(I)I
istore 2
L1:
iload 2
ifne L2
aload 0
getfield com/nd/rj/common/microblogging/SNSModleMgr/mConfigSet Lcom/nd/rj/common/microblogging/help/ConfigSet;
iload 1
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/removeUserNick(I)V
L2:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method
