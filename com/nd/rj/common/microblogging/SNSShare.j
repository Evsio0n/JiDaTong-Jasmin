.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSShare
.super java/lang/Object
.inner class inner com/nd/rj/common/microblogging/SNSShare$1
.inner class public static abstract interface OnShareProcessListener inner com/nd/rj/common/microblogging/SNSShare$OnShareProcessListener outer com/nd/rj/common/microblogging/SNSShare
.inner class public static abstract interface OnShareSetListener inner com/nd/rj/common/microblogging/SNSShare$OnShareSetListener outer com/nd/rj/common/microblogging/SNSShare

.field private static 'm_SnsFollowUserName' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"

.field private static 'm_SnsFromString' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"

.field private static 'maxFromLen' I

.field private static 'share' Lcom/nd/rj/common/microblogging/SNSShare;

.field private 'mContext' Landroid/content/Context;

.field private 'mOnShareListener' Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;

.field private 'mQuerySupport' Lcom/nd/rj/common/microblogging/QuerySupportThread;

.field private 'm_Items' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'm_Set' Lcom/nd/rj/common/microblogging/help/ConfigSet;

.field private 'm_snsFollowName' Ljava/lang/String;

.field private 'onShareListener' Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFromString Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFollowUserName Ljava/util/HashMap;
iconst_0
putstatic com/nd/rj/common/microblogging/SNSShare/maxFromLen I
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/microblogging/SNSShare/m_Items Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/rj/common/microblogging/SNSShare/mQuerySupport Lcom/nd/rj/common/microblogging/QuerySupportThread;
aload 0
new com/nd/rj/common/microblogging/SNSShare$1
dup
aload 0
invokespecial com/nd/rj/common/microblogging/SNSShare$1/<init>(Lcom/nd/rj/common/microblogging/SNSShare;)V
putfield com/nd/rj/common/microblogging/SNSShare/onShareListener Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/rj/common/microblogging/SNSShare;)Landroid/content/Context;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getFromWhere(I)Ljava/lang/String;
getstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFromString Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/rj/common/microblogging/SNSShare;
getstatic com/nd/rj/common/microblogging/SNSShare/share Lcom/nd/rj/common/microblogging/SNSShare;
ifnonnull L0
new com/nd/rj/common/microblogging/SNSShare
dup
invokespecial com/nd/rj/common/microblogging/SNSShare/<init>()V
putstatic com/nd/rj/common/microblogging/SNSShare/share Lcom/nd/rj/common/microblogging/SNSShare;
L0:
getstatic com/nd/rj/common/microblogging/SNSShare/share Lcom/nd/rj/common/microblogging/SNSShare;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getMaxFromWhereLength()I
getstatic com/nd/rj/common/microblogging/SNSShare/maxFromLen I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getSnsFollowUserName(I)Ljava/lang/String;
getstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFollowUserName Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 1
.limit stack 2
.end method

.method public static setFromWhere(ILjava/lang/String;)V
getstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFromString Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFromString Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
iconst_0
putstatic com/nd/rj/common/microblogging/SNSShare/maxFromLen I
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
istore 0
iload 0
getstatic com/nd/rj/common/microblogging/SNSShare/maxFromLen I
if_icmple L0
iload 0
putstatic com/nd/rj/common/microblogging/SNSShare/maxFromLen I
goto L0
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public static setSnsFollowUserName(ILjava/lang/String;)V
getstatic com/nd/rj/common/microblogging/SNSShare/m_SnsFollowUserName Ljava/util/HashMap;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method private startQuerySupport(Landroid/content/Context;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/mQuerySupport Lcom/nd/rj/common/microblogging/QuerySupportThread;
ifnonnull L0
aload 0
new com/nd/rj/common/microblogging/QuerySupportThread
dup
aload 1
invokespecial com/nd/rj/common/microblogging/QuerySupportThread/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSShare/mQuerySupport Lcom/nd/rj/common/microblogging/QuerySupportThread;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/mQuerySupport Lcom/nd/rj/common/microblogging/QuerySupportThread;
invokevirtual com/nd/rj/common/microblogging/QuerySupportThread/start()V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method CheckNet(Landroid/content/Context;)Z
iconst_1
istore 2
aload 1
invokestatic com/nd/rj/common/microblogging/help/HttpTool/getActiveNetWorkName(Landroid/content/Context;)Ljava/lang/String;
ifnonnull L0
aload 1
getstatic com/nd/rj/common/R$string/sns_network_unavailable I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 2
L0:
iload 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public CheckSnsStateAndShowTip(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.signature "(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z"
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/SNSShare/CheckNet(Landroid/content/Context;)Z
ifne L0
iconst_0
ireturn
L0:
aload 1
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
astore 8
aload 8
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/isSending()Z
ifeq L1
aload 8
iload 2
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppId(I)V
aload 8
aload 3
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppCode(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/SNSShare/IsAssociation(Landroid/content/Context;)Z
ifne L2
aload 0
aload 1
iload 2
aload 3
aload 4
aload 5
aload 6
aload 7
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowSnsSet(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
iconst_0
ireturn
L2:
iconst_1
ireturn
L1:
aload 1
aload 1
getstatic com/nd/rj/common/R$string/sns_sending I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
ireturn
.limit locals 9
.limit stack 8
.end method

.method public IsAssociation(Landroid/content/Context;)Z
aload 0
aload 1
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
invokevirtual com/nd/rj/common/microblogging/ConfigFile/GetSNSSupport()Ljava/util/ArrayList;
putfield com/nd/rj/common/microblogging/SNSShare/m_Items Ljava/util/ArrayList;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
ifnonnull L0
aload 0
new com/nd/rj/common/microblogging/help/ConfigSet
dup
aload 1
invokespecial com/nd/rj/common/microblogging/help/ConfigSet/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/SNSShare/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
L0:
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Items Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L1
L2:
iconst_0
ireturn
L1:
iconst_0
istore 2
L3:
iload 2
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Items Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Items Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/rj/common/microblogging/SNSItem
ifeq L4
aload 1
checkcast com/nd/rj/common/microblogging/SNSItem
astore 1
aload 1
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 1
getfield com/nd/rj/common/microblogging/SNSItem/Type I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
putfield com/nd/rj/common/microblogging/SNSItem/bIsSetInfo Z
aload 1
getfield com/nd/rj/common/microblogging/SNSItem/bIsSetInfo Z
ifeq L5
iconst_1
ireturn
L4:
aload 1
checkcast com/nd/rj/common/microblogging/SNSType
astore 1
aload 1
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_Set Lcom/nd/rj/common/microblogging/help/ConfigSet;
aload 1
getfield com/nd/rj/common/microblogging/SNSType/snstype I
iconst_0
invokevirtual com/nd/rj/common/microblogging/help/ConfigSet/getBindState(IZ)Z
putfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
aload 1
getfield com/nd/rj/common/microblogging/SNSType/bIsSetInfo Z
ifeq L5
iconst_1
ireturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 3
.limit stack 4
.end method

.method public SendTextAndImage(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.signature "(Landroid/content/Context;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V"
aload 1
getstatic com/nd/rj/common/R$string/sns_format I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 10
aload 2
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 11
L0:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 12
aload 10
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aload 12
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 9
aload 9
astore 8
aload 7
ifnull L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
L2:
aload 12
invokevirtual java/lang/Integer/intValue()I
aload 8
invokestatic com/nd/rj/common/microblogging/SNSShare/setFromWhere(ILjava/lang/String;)V
goto L0
L1:
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSShare/mContext Landroid/content/Context;
aload 0
aload 1
iload 3
aload 4
aload 5
aload 6
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/onShareListener Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowEditBitmapBlog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;)V
return
.limit locals 13
.limit stack 7
.end method

.method public ShowBindingActivity(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V
.signature "(Landroid/content/Context;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;ILjava/lang/String;)V"
aload 2
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L0:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 6
aload 2
aload 6
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 7
aload 6
invokevirtual java/lang/Integer/intValue()I
aload 7
invokestatic com/nd/rj/common/microblogging/SNSShare/setSnsFollowUserName(ILjava/lang/String;)V
goto L0
L1:
aload 0
aload 1
iload 3
aload 4
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowSnsSet(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
return
.limit locals 8
.limit stack 8
.end method

.method public ShowEditBitmapBlog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/SNSShare/CheckNet(Landroid/content/Context;)Z
ifne L3
return
L3:
aload 1
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
astore 7
aload 7
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/isSending()Z
ifeq L4
aload 7
iload 2
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppId(I)V
aload 7
aload 3
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppCode(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/SNSShare/IsAssociation(Landroid/content/Context;)Z
ifne L0
aload 0
aload 1
iload 2
aload 3
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/rj/common/microblogging/SNSShare/ShowSnsSet(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
return
L0:
aload 0
aload 6
putfield com/nd/rj/common/microblogging/SNSShare/mOnShareListener Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
new android/content/Intent
dup
aload 1
ldc com/nd/rj/common/microblogging/SNSEditWeiBo
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc "SNS_CONTENT"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
aload 5
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetBitMap(Landroid/graphics/Bitmap;)V
aload 1
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSShare/startQuerySupport(Landroid/content/Context;)V
return
L2:
astore 3
ldc "ShowEditBitmapBlog"
aload 3
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
L4:
aload 1
aload 1
getstatic com/nd/rj/common/R$string/sns_sending I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 8
.limit stack 8
.end method

.method public ShowShareProcessTip(Landroid/content/Context;ILjava/lang/String;I)V
ldc ""
astore 5
iload 4
tableswitch -1
L0
L1
L2
default : L3
L3:
aload 5
astore 3
L4:
aload 1
aload 3
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u53d1\u9001\u6210\u529f!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L4
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u53d1\u9001\u5931\u8d25!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L4
L2:
aload 1
getstatic com/nd/rj/common/R$string/sns_send_wait I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
goto L4
.limit locals 6
.limit stack 5
.end method

.method public ShowSnsSet(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.signature "(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V"
aload 0
aload 1
invokevirtual com/nd/rj/common/microblogging/SNSShare/CheckNet(Landroid/content/Context;)Z
ifne L0
return
L0:
aload 0
aload 1
invokestatic com/nd/rj/common/util/ComfunHelp/getAppName(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSShare/m_snsFollowName Ljava/lang/String;
aload 1
invokestatic com/nd/rj/common/microblogging/SNSModleMgr/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/SNSModleMgr;
astore 8
aload 8
iload 2
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppId(I)V
aload 8
aload 3
invokevirtual com/nd/rj/common/microblogging/SNSModleMgr/SetAppCode(Ljava/lang/String;)V
iload 2
putstatic com/nd/rj/common/microblogging/SNSSet/APP_ID I
aload 3
putstatic com/nd/rj/common/microblogging/SNSSet/APP_CODE Ljava/lang/String;
aload 4
putstatic com/nd/rj/common/microblogging/SNSSet/PARAMS Ljava/util/HashMap;
aload 5
putstatic com/nd/rj/common/microblogging/SNSSet/CONTENT Ljava/lang/String;
aload 6
putstatic com/nd/rj/common/microblogging/SNSSet/BMP Landroid/graphics/Bitmap;
aload 7
putstatic com/nd/rj/common/microblogging/SNSSet/DOWNLOAD_URL Ljava/lang/String;
aload 1
new android/content/Intent
dup
aload 1
ldc com/nd/rj/common/microblogging/SNSSet
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSShare/startQuerySupport(Landroid/content/Context;)V
return
.limit locals 9
.limit stack 5
.end method

.method public SnsLoginOut(Landroid/content/Context;)V
aload 1
invokestatic com/nd/rj/common/microblogging/ServerInterface/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ServerInterface;
invokevirtual com/nd/rj/common/microblogging/ServerInterface/loginOut()V
return
.limit locals 2
.limit stack 1
.end method

.method public getShareProcessListener()Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/mOnShareListener Lcom/nd/rj/common/microblogging/SNSShare$OnShareProcessListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSnsFollowName()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSShare/m_snsFollowName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setSnsFollowName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSShare/m_snsFollowName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
