.bytecode 50.0
.class final synchronized com/alipay/security/mobile/module/a/c
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

.field final synthetic 'b' Lcom/alipay/security/mobile/module/a/b;

.method <init>(Lcom/alipay/security/mobile/module/a/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V
aload 0
aload 1
putfield com/alipay/security/mobile/module/a/c/b Lcom/alipay/security/mobile/module/a/b;
aload 0
aload 2
putfield com/alipay/security/mobile/module/a/c/a Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/security/mobile/module/a/c/b Lcom/alipay/security/mobile/module/a/b;
invokestatic com/alipay/security/mobile/module/a/b/a(Lcom/alipay/security/mobile/module/a/b;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
aload 0
getfield com/alipay/security/mobile/module/a/c/a Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;
invokeinterface com/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService/reportStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult; 1
invokestatic com/alipay/security/mobile/module/a/b/a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
pop
L1:
return
L2:
astore 1
new com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult
dup
invokespecial com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/<init>()V
invokestatic com/alipay/security/mobile/module/a/b/a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
pop
invokestatic com/alipay/security/mobile/module/a/b/a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
iconst_0
putfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/success Z
invokestatic com/alipay/security/mobile/module/a/b/a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
new java/lang/StringBuilder
dup
ldc "static data rpc upload error, "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/b(Ljava/lang/Throwable;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult/resultCode Ljava/lang/String;
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/b(Ljava/lang/Throwable;)Ljava/lang/String;
pop
return
.limit locals 2
.limit stack 4
.end method
