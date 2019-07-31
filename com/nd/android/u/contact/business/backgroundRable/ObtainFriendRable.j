.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/ObtainFriendRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final run()V
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L6 to L7 using L8
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_1
if_icmpne L9
L10:
return
L9:
iconst_1
istore 2
aconst_null
astore 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L11
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/findUpdateTime()[J 0
astore 8
L11:
aload 8
ifnull L10
aload 8
arraylength
iconst_2
if_icmplt L10
aconst_null
astore 9
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoUpdate()Lorg/json/JSONObject;
astore 10
L1:
aload 10
astore 9
L12:
invokestatic java/lang/Thread/interrupted()Z
ifeq L13
ldc "DYF"
ldc "ObtainFriendRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
astore 10
aload 10
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L12
L3:
astore 10
aload 10
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L12
L4:
astore 10
aload 10
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L12
L5:
astore 10
aload 10
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L12
L13:
aload 9
ldc "friend_updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 3
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 8
iconst_1
laload
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/vaildateFriendGroupUpdate(JJJ)Z
istore 7
iload 7
ifeq L7
L6:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
iconst_1
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/initFriendValue(Z)V
L7:
invokestatic java/lang/Thread/interrupted()Z
ifeq L14
ldc "DYF"
ldc "ObtainFriendRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L8:
astore 10
aload 10
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L7
L14:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
lload 3
invokevirtual com/product/android/business/login/BindUser/setFriend_updatetime(J)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
invokestatic java/lang/Thread/interrupted()Z
ifeq L15
ldc "DYF"
ldc "ObtainFriendRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L15:
aload 9
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 5
iload 2
istore 1
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 8
iconst_0
laload
lload 5
lload 3
invokevirtual com/nd/android/u/contact/business/OapGroupPro/vaildateMyUpdate(JJJ)Z
ifne L16
iload 2
istore 1
iload 7
ifne L16
iconst_0
istore 1
L16:
iload 1
ifne L17
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
L18:
invokestatic java/lang/Thread/interrupted()Z
ifeq L19
ldc "DYF"
ldc "ObtainFriendRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L17:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainFriend(I)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "friend_list_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
goto L18
L19:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131075
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 11
.limit stack 7
.end method
