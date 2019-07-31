.bytecode 50.0
.class public final synchronized enum com/product/android/business/broadcast/PersonInfoBroadHelper
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/broadcast/PersonInfoBroadHelper;>;"
.inner class public static ParamCode inner com/product/android/business/broadcast/PersonInfoBroadHelper$ParamCode outer com/product/android/business/broadcast/PersonInfoBroadHelper
.inner class public static ParamKey inner com/product/android/business/broadcast/PersonInfoBroadHelper$ParamKey outer com/product/android/business/broadcast/PersonInfoBroadHelper

.field private static final synthetic '$VALUES' [Lcom/product/android/business/broadcast/PersonInfoBroadHelper;

.field public static 'ACTION_HOMEPAGE_UPDATE' Ljava/lang/String;

.field public static final enum 'INSTANCE' Lcom/product/android/business/broadcast/PersonInfoBroadHelper;

.method static <clinit>()V
new com/product/android/business/broadcast/PersonInfoBroadHelper
dup
ldc "INSTANCE"
iconst_0
invokespecial com/product/android/business/broadcast/PersonInfoBroadHelper/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
iconst_1
anewarray com/product/android/business/broadcast/PersonInfoBroadHelper
dup
iconst_0
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aastore
putstatic com/product/android/business/broadcast/PersonInfoBroadHelper/$VALUES [Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
ldc "com.nd.android.u.cloud.homepageupdate"
putstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
ldc com/product/android/business/broadcast/PersonInfoBroadHelper
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/broadcast/PersonInfoBroadHelper
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/$VALUES [Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
invokevirtual [Lcom/product/android/business/broadcast/PersonInfoBroadHelper;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
areturn
.limit locals 0
.limit stack 1
.end method

.method public isNeedSendBroadByOapuid(J)Z
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public isNeedSendBroadByUapuid(J)Z
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public sendBlackListBroadCast(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "code"
sipush 1003
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "blacklist"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 3
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method public sendModifyAlbumBroadCast(Landroid/content/Context;JLjava/util/ArrayList;)V
.signature "(Landroid/content/Context;JLjava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;)V"
aload 0
lload 2
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/isNeedSendBroadByUapuid(J)Z
ifne L0
return
L0:
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "code"
sipush 1002
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "uapuid"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 5
ldc "albumlist"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 5
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 6
.limit stack 4
.end method

.method public sendModifyAvaBroadCast(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "code"
sipush 1000
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "headUri"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 4
ldc "showUriStr"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 4
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 5
.limit stack 3
.end method

.method public sendModifyMyInfoBroadCast(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)V
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "code"
sipush 1004
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "binduser"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 3
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method public sendModifyOtherInfoBroadCast(Landroid/content/Context;JLcom/product/android/commonInterface/contact/OapUser;)V
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "code"
sipush 1005
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "oapuid"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 5
ldc "oapuser"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 5
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 6
.limit stack 4
.end method

.method public sendPersonalTagBroadCast(Landroid/content/Context;JLjava/util/ArrayList;)V
.signature "(Landroid/content/Context;JLjava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;)V"
aload 0
lload 2
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/isNeedSendBroadByOapuid(J)Z
ifne L0
return
L0:
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "code"
sipush 1001
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "oapuid"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 5
ldc "taglist"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 5
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 6
.limit stack 4
.end method

.method public sendUpdateAvaBroadCast(J)V
new android/content/Intent
dup
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/ACTION_HOMEPAGE_UPDATE Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "code"
sipush 1006
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "oapuid"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 3
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 4
.limit stack 4
.end method
