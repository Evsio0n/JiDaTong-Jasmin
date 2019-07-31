.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/a/b
.super java/lang/Object
.implements com/alipay/security/mobile/module/a/a

.field private static 'f' Lcom/alipay/security/mobile/module/a/b;

.field private static 'g' Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

.field private 'a' Landroid/content/Context;

.field private 'b' Lcom/alipay/android/phone/mrpc/core/ad;

.field private 'c' Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private 'd' Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

.field private 'e' Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

.method static <clinit>()V
aconst_null
putstatic com/alipay/security/mobile/module/a/b/f Lcom/alipay/security/mobile/module/a/b;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/alipay/security/mobile/module/a/b/a Landroid/content/Context;
aload 0
aconst_null
putfield com/alipay/security/mobile/module/a/b/b Lcom/alipay/android/phone/mrpc/core/ad;
aload 0
aconst_null
putfield com/alipay/security/mobile/module/a/b/c Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;
aload 0
aconst_null
putfield com/alipay/security/mobile/module/a/b/d Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
aload 0
aconst_null
putfield com/alipay/security/mobile/module/a/b/e Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;
aload 0
aload 1
putfield com/alipay/security/mobile/module/a/b/a Landroid/content/Context;
L0:
new com/alipay/android/phone/mrpc/core/e
dup
invokespecial com/alipay/android/phone/mrpc/core/e/<init>()V
astore 2
aload 2
invokestatic com/alipay/security/mobile/module/a/a/a/a()Ljava/lang/String;
putfield com/alipay/android/phone/mrpc/core/e/a Ljava/lang/String;
aload 0
new com/alipay/android/phone/mrpc/core/o
dup
aload 1
invokespecial com/alipay/android/phone/mrpc/core/o/<init>(Landroid/content/Context;)V
putfield com/alipay/security/mobile/module/a/b/b Lcom/alipay/android/phone/mrpc/core/ad;
aload 0
aload 0
getfield com/alipay/security/mobile/module/a/b/b Lcom/alipay/android/phone/mrpc/core/ad;
ldc com/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/ad/a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;
checkcast com/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService
putfield com/alipay/security/mobile/module/a/b/c Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;
aload 0
aload 0
getfield com/alipay/security/mobile/module/a/b/b Lcom/alipay/android/phone/mrpc/core/ad;
ldc com/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/ad/a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;
checkcast com/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService
putfield com/alipay/security/mobile/module/a/b/d Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
aload 0
aload 0
getfield com/alipay/security/mobile/module/a/b/b Lcom/alipay/android/phone/mrpc/core/ad;
ldc com/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService
aload 2
invokevirtual com/alipay/android/phone/mrpc/core/ad/a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;
checkcast com/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService
putfield com/alipay/security/mobile/module/a/b/e Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;
L1:
return
L2:
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/alipay/security/mobile/module/a/b
monitorenter
L0:
getstatic com/alipay/security/mobile/module/a/b/f Lcom/alipay/security/mobile/module/a/b;
ifnonnull L1
new com/alipay/security/mobile/module/a/b
dup
aload 0
invokespecial com/alipay/security/mobile/module/a/b/<init>(Landroid/content/Context;)V
putstatic com/alipay/security/mobile/module/a/b/f Lcom/alipay/security/mobile/module/a/b;
L1:
getstatic com/alipay/security/mobile/module/a/b/f Lcom/alipay/security/mobile/module/a/b;
astore 0
L3:
ldc com/alipay/security/mobile/module/a/b
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/security/mobile/module/a/b
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method static synthetic a(Lcom/alipay/security/mobile/module/a/b;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
aload 0
getfield com/alipay/security/mobile/module/a/b/d Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
getstatic com/alipay/security/mobile/module/a/b/g Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
aload 0
putstatic com/alipay/security/mobile/module/a/b/g Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest
dup
invokespecial com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest/<init>()V
astore 5
aload 5
aload 1
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest/os Ljava/lang/String;
aload 5
aload 4
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest/apdid Ljava/lang/String;
aload 5
aload 2
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest/userId Ljava/lang/String;
aload 5
aload 3
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest/token Ljava/lang/String;
aload 0
getfield com/alipay/security/mobile/module/a/b/e Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;
aload 5
invokeinterface com/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService/getAppListCmd(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListCmdResult; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 6
.limit stack 2
.end method

.method public final a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 0
getfield com/alipay/security/mobile/module/a/b/d Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
ifnull L7
L0:
aconst_null
putstatic com/alipay/security/mobile/module/a/b/g Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
new java/lang/Thread
dup
new com/alipay/security/mobile/module/a/c
dup
aload 0
aload 1
invokespecial com/alipay/security/mobile/module/a/c/<init>(Lcom/alipay/security/mobile/module/a/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L1:
ldc_w 300000
istore 2
L3:
getstatic com/alipay/security/mobile/module/a/b/g Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
ifnonnull L7
L4:
iload 2
iflt L7
L5:
ldc2_w 50L
invokestatic java/lang/Thread/sleep(J)V
L6:
iload 2
bipush 50
isub
istore 2
goto L3
L2:
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L7:
getstatic com/alipay/security/mobile/module/a/b/g Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
areturn
.limit locals 3
.limit stack 6
.end method

.method public final a(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L6
iconst_0
ireturn
L6:
aload 0
getfield com/alipay/security/mobile/module/a/b/c Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;
ifnull L7
aconst_null
astore 3
L0:
aload 0
getfield com/alipay/security/mobile/module/a/b/c Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/e(Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService/logCollect(Ljava/lang/String;)Ljava/lang/String; 1
astore 1
L1:
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L7
L3:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "success"
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
istore 2
L4:
iload 2
ireturn
L5:
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L7:
iconst_0
istore 2
goto L4
L2:
astore 1
aload 3
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method
