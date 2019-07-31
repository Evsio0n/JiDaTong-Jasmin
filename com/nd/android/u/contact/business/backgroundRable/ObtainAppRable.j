.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/ObtainAppRable
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static isNeedReload(J)Z
lload 0
lconst_0
lcmp
ifne L0
L1:
iconst_1
ireturn
L0:
invokestatic java/lang/System/currentTimeMillis()J
lload 0
lsub
ldc2_w 1000L
ldiv
lstore 0
invokestatic com/common/android/utils/NetWorkUtils/isWifi()Z
ifeq L2
lload 0
ldc2_w 3600L
lcmp
ifge L1
L3:
iconst_0
ireturn
L2:
lload 0
ldc2_w 86400L
lcmp
iflt L3
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static obtain(Z)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
ldc "debug"
ldc "ObtainAppRable start"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
istore 2
iconst_0
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-loadAppTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
invokestatic com/nd/android/u/contact/business/backgroundRable/ObtainAppRable/isNeedReload(J)Z
ifne L5
iload 0
ifeq L6
L5:
iload 2
istore 0
L0:
lload 3
invokestatic com/nd/android/u/contact/business/SynOapApp/initAppInfo(J)Z
istore 1
L1:
iload 1
istore 0
L3:
invokestatic com/nd/android/u/contact/business/SynOapApp/initAppType()Z
pop
L4:
iload 1
istore 0
L7:
iload 0
istore 1
iload 0
ifeq L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-loadAppTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 5
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
iload 0
istore 1
L6:
iload 1
ifne L8
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainApp(I)V
L9:
invokestatic java/lang/Thread/interrupted()Z
ifeq L10
ldc "DYF"
ldc "ObtainAppRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L7
L8:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainApp(I)V
goto L9
L10:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131074
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 6
.limit stack 4
.end method
