.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/a/c/b
.super java/lang/Object
.implements com/alipay/security/mobile/module/a/c/a

.field private static 'a' Lcom/alipay/security/mobile/module/a/c/a;

.field private static 'b' Lcom/alipay/security/mobile/module/a/a;

.method static <clinit>()V
aconst_null
putstatic com/alipay/security/mobile/module/a/c/b/a Lcom/alipay/security/mobile/module/a/c/a;
aconst_null
putstatic com/alipay/security/mobile/module/a/c/b/b Lcom/alipay/security/mobile/module/a/a;
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

.method public static a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;
aconst_null
astore 1
aload 0
ifnonnull L0
aconst_null
areturn
L0:
getstatic com/alipay/security/mobile/module/a/c/b/a Lcom/alipay/security/mobile/module/a/c/a;
ifnonnull L1
aload 0
ifnonnull L2
aload 1
astore 0
L3:
aload 0
putstatic com/alipay/security/mobile/module/a/c/b/b Lcom/alipay/security/mobile/module/a/a;
new com/alipay/security/mobile/module/a/c/b
dup
invokespecial com/alipay/security/mobile/module/a/c/b/<init>()V
putstatic com/alipay/security/mobile/module/a/c/b/a Lcom/alipay/security/mobile/module/a/c/a;
L1:
getstatic com/alipay/security/mobile/module/a/c/b/a Lcom/alipay/security/mobile/module/a/c/a;
areturn
L2:
aload 0
invokestatic com/alipay/security/mobile/module/a/b/a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;
astore 0
goto L3
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/a/b/a;
getstatic com/alipay/security/mobile/module/a/c/b/b Lcom/alipay/security/mobile/module/a/a;
aload 1
aload 2
aload 3
aload 4
invokeinterface com/alipay/security/mobile/module/a/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult; 4
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new com/alipay/security/mobile/module/a/b/a
dup
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult/appListData Ljava/lang/String;
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult/appListVer Ljava/lang/String;
invokespecial com/alipay/security/mobile/module/a/b/a/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 2
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult/success Z
putfield com/alipay/security/mobile/module/a/b/a/c Z
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult/resultCode Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/a/d Ljava/lang/String;
aload 2
areturn
.limit locals 5
.limit stack 5
.end method

.method public final a(Lcom/alipay/security/mobile/module/a/b/d;)Lcom/alipay/security/mobile/module/a/b/c;
new com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest
dup
invokespecial com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/<init>()V
astore 2
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/os Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/b Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/apdid Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/pubApdid Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/d Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/priApdid Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/e Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/token Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/f Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/umidToken Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/g Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/version Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/security/mobile/module/a/b/d/h Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/c(Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/lastTime Ljava/lang/String;
aload 1
getfield com/alipay/security/mobile/module/a/b/d/i Ljava/util/Map;
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
L1:
aload 2
aload 1
putfield com/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest/dataMap Ljava/util/Map;
getstatic com/alipay/security/mobile/module/a/c/b/b Lcom/alipay/security/mobile/module/a/a;
aload 2
invokeinterface com/alipay/security/mobile/module/a/a/a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult; 1
astore 1
new com/alipay/security/mobile/module/a/b/c
dup
invokespecial com/alipay/security/mobile/module/a/b/c/<init>()V
astore 2
aload 1
ifnonnull L2
aconst_null
areturn
L0:
aload 1
getfield com/alipay/security/mobile/module/a/b/d/i Ljava/util/Map;
astore 1
goto L1
L2:
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/success Z
putfield com/alipay/security/mobile/module/a/b/c/c Z
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/resultCode Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/d Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/apdid Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/a Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/token Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/b Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/currentTime Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/e Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/version Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/f Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/vkeySwitch Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/g Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/bugTrackSwitch Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/h Ljava/lang/String;
aload 2
aload 1
getfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/appListVer Ljava/lang/String;
putfield com/alipay/security/mobile/module/a/b/c/i Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public final a(Ljava/lang/String;)Z
getstatic com/alipay/security/mobile/module/a/c/b/b Lcom/alipay/security/mobile/module/a/a;
aload 1
invokeinterface com/alipay/security/mobile/module/a/a/a(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method
