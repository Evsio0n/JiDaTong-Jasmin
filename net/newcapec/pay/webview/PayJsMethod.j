.bytecode 50.0
.class public synchronized net/newcapec/pay/webview/PayJsMethod
.super net/newcapec/pay/webview/BaseJsInterface

.field private 'payCallback' Ljava/lang/String;

.method public <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
aload 0
aload 1
aload 2
invokespecial net/newcapec/pay/webview/BaseJsInterface/<init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
return
.limit locals 3
.limit stack 3
.end method

.method public checkUsable(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8fdb\u5165\u6821\u9a8c\u652f\u4ed8\u65b9\u5f0f\u662f\u5426\u53ef\u7528\u65b9\u6cd5: H5\u4f20\u5165\u56de\u8c03\u65b9\u6cd5\u540d "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "H5\u4f20\u5165\u53c2\u6570\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 1
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
ldc "gateway_type"
invokevirtual com/alibaba/fastjson/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
invokevirtual net/newcapec/pay/webview/PayJsMethod/getActivity()Landroid/app/Activity;
aload 1
invokestatic net/newcapec/pay/NewCapecPayActivity/checkUsable(Landroid/content/Context;Ljava/lang/String;)Lnet/newcapec/pay/common/NCPPayResp;
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u6821\u9a8c\u652f\u4ed8\u65b9\u5f0f\u662f\u5426\u53ef\u7528\u7ed3\u679c\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
aload 2
aload 1
invokevirtual net/newcapec/pay/webview/PayJsMethod/executeJsMethod(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public getBindName()Ljava/lang/String;
ldc "wanxiao_pay"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSdkInfo(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8fdb\u5165\u83b7\u53d6sdk\u4fe1\u606f\u65b9\u6cd5: H5\u4f20\u5165\u56de\u8c03\u65b9\u6cd5\u540d "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
invokestatic net/newcapec/pay/NewcapecPay/getVersion()Ljava/lang/String;
astore 2
aload 0
invokevirtual net/newcapec/pay/webview/PayJsMethod/getActivity()Landroid/app/Activity;
invokestatic net/newcapec/pay/NewcapecPay/getUrl(Landroid/content/Context;)Ljava/lang/String;
astore 3
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 4
aload 4
ldc "version"
aload 2
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 4
ldc "service_url"
aload 3
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u83b7\u53d6sdk\u4fe1\u606f\u56de\u8c03\u7ed3\u679c\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
aload 1
aload 4
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/executeJsMethod(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
iload 1
getstatic net/newcapec/pay/webview/JsMethodRequestCode/pay_pay I
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
ldc "\u652f\u4ed8\u8fd4\u56de-------------"
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 3
ldc "data"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u652f\u4ed8\u8fd4\u56de\u7ed3\u679c\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
aload 0
getfield net/newcapec/pay/webview/PayJsMethod/payCallback Ljava/lang/String;
aload 3
invokevirtual net/newcapec/pay/webview/PayJsMethod/executeJsMethod(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 2
putfield net/newcapec/pay/webview/PayJsMethod/payCallback Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8fdb\u5165\u652f\u4ed8\u65b9\u6cd5: H5\u4f20\u5165\u56de\u8c03\u65b9\u6cd5\u540d\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield net/newcapec/pay/webview/PayJsMethod/payCallback Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "H5\u4f20\u5165\u53c2\u6570\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/PayJsMethod/log(Ljava/lang/String;)V
aload 0
invokevirtual net/newcapec/pay/webview/PayJsMethod/getActivity()Landroid/app/Activity;
aload 1
getstatic net/newcapec/pay/webview/JsMethodRequestCode/pay_pay I
invokestatic net/newcapec/pay/NewCapecPayActivity/open(Landroid/app/Activity;Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method
