.bytecode 50.0
.class public synchronized net/newcapec/pay/webview/EcardPayJsMethod
.super net/newcapec/pay/webview/BaseJsInterface

.field private 'infoCallback' Ljava/lang/String;

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

.method private infoCallback(Ljava/lang/String;Ljava/lang/String;)V
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 3
aload 3
ldc "version"
aload 1
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "service_url"
aload 2
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u83b7\u53d6sdk\u4fe1\u606f\u56de\u8c03\u7ed3\u679c\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 0
aload 0
getfield net/newcapec/pay/webview/EcardPayJsMethod/infoCallback Ljava/lang/String;
aload 3
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/executeJsMethod(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method private payCallback(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 4
aload 4
ldc "errCode"
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 4
ldc "errStr"
aload 2
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 4
ldc "result"
aload 3
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u4e00\u5361\u901a\u5145\u503c\u56de\u8c03\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 0
aload 0
getfield net/newcapec/pay/webview/EcardPayJsMethod/payCallback Ljava/lang/String;
aload 4
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/executeJsMethod(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 3
.end method

.method protected Log_v(Ljava/lang/String;)V
aload 0
getfield net/newcapec/pay/webview/EcardPayJsMethod/TAG Ljava/lang/String;
aload 1
invokestatic net/newcapec/pay/webview/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getBindName()Ljava/lang/String;
ldc "wanxiao_ecard_pay"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSdkInfo(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 1
putfield net/newcapec/pay/webview/EcardPayJsMethod/infoCallback Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8fdb\u5165\u83b7\u53d6sdk\u4fe1\u606f\u65b9\u6cd5: H5\u4f20\u5165\u56de\u8c03\u65b9\u6cd5\u540d "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield net/newcapec/pay/webview/EcardPayJsMethod/infoCallback Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 0
invokestatic net/newcapec/pay/NewcapecPay/getVersion()Ljava/lang/String;
aload 0
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/getActivity()Landroid/app/Activity;
invokestatic net/newcapec/pay/NewcapecPay/getUrl(Landroid/content/Context;)Ljava/lang/String;
invokespecial net/newcapec/pay/webview/EcardPayJsMethod/infoCallback(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
iload 1
getstatic net/newcapec/pay/webview/JsMethodRequestCode/EcardPay_Pay I
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
ldc "\u652f\u4ed8\u8fd4\u56de-------------"
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 3
getstatic net/newcapec/pay/NewcapecPay/NCPPayIntentExtraResult Ljava/lang/String;
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
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 3
ldc net/newcapec/pay/common/NCPPayResp
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast net/newcapec/pay/common/NCPPayResp
astore 3
aload 3
ifnull L1
aload 3
getfield net/newcapec/pay/common/NCPPayResp/errCode I
getstatic net/newcapec/pay/common/NCPPayResultStatus/SUCCESS Lnet/newcapec/pay/common/NCPPayResultStatus;
invokevirtual net/newcapec/pay/common/NCPPayResultStatus/errCode()I
if_icmpne L1
aload 3
getfield net/newcapec/pay/common/NCPPayResp/result Ljava/lang/String;
invokestatic com/alibaba/fastjson/JSONObject/parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
astore 4
aload 0
iconst_0
aload 3
getfield net/newcapec/pay/common/NCPPayResp/errStr Ljava/lang/String;
aload 4
invokespecial net/newcapec/pay/webview/EcardPayJsMethod/payCallback(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
L0:
return
L1:
aload 0
aload 3
getfield net/newcapec/pay/common/NCPPayResp/errCode I
aload 3
getfield net/newcapec/pay/common/NCPPayResp/errStr Ljava/lang/String;
aconst_null
invokespecial net/newcapec/pay/webview/EcardPayJsMethod/payCallback(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
return
.limit locals 5
.limit stack 4
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 2
putfield net/newcapec/pay/webview/EcardPayJsMethod/payCallback Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8fdb\u5165\u4e00\u5361\u901a\u5145\u503c\u65b9\u6cd5: H5\u4f20\u5165\u56de\u8c03\u65b9\u6cd5\u540d\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield net/newcapec/pay/webview/EcardPayJsMethod/payCallback Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "H5\u4f20\u5165\u53c2\u6570\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
aload 1
invokestatic com/alibaba/fastjson/JSONObject/parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
ldc "order_param"
invokevirtual com/alibaba/fastjson/JSONObject/getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
invokevirtual com/alibaba/fastjson/JSONObject/toJSONString()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "\u8ba2\u5355\u4fe1\u606f\u4e3a\u7a7a"
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
L1:
aload 0
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/getActivity()Landroid/app/Activity;
aload 1
getstatic net/newcapec/pay/webview/JsMethodRequestCode/EcardPay_Pay I
invokestatic net/newcapec/pay/NewcapecPay/sendPay(Landroid/content/Context;Ljava/lang/String;I)V
return
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u8ba2\u5355\u4fe1\u606f"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual net/newcapec/pay/webview/EcardPayJsMethod/Log_v(Ljava/lang/String;)V
goto L1
.limit locals 3
.limit stack 3
.end method
