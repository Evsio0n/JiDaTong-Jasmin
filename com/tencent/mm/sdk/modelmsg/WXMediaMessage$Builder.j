.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder
.super java/lang/Object
.inner class public static Builder inner com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder outer com/tencent/mm/sdk/modelmsg/WXMediaMessage

.field public static final 'KEY_IDENTIFIER' Ljava/lang/String; = "_wxobject_identifier_"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
.catch java/lang/Exception from L0 to L1 using L2
new com/tencent/mm/sdk/modelmsg/WXMediaMessage
dup
invokespecial com/tencent/mm/sdk/modelmsg/WXMediaMessage/<init>()V
astore 1
aload 1
aload 0
ldc "_wxobject_sdkVer"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/sdkVer I
aload 1
aload 0
ldc "_wxobject_title"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/title Ljava/lang/String;
aload 1
aload 0
ldc "_wxobject_description"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/description Ljava/lang/String;
aload 1
aload 0
ldc "_wxobject_thumbdata"
invokevirtual android/os/Bundle/getByteArray(Ljava/lang/String;)[B
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
aload 1
aload 0
ldc "_wxobject_mediatagname"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaTagName Ljava/lang/String;
aload 0
ldc "_wxobject_identifier_"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/pathOldToNew(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ifnull L3
aload 2
invokevirtual java/lang/String/length()I
ifgt L0
L3:
aload 1
areturn
L0:
aload 1
aload 2
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject
putfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
aload 1
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
aload 0
invokeinterface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject/unserialize(Landroid/os/Bundle;)V 1
L1:
aload 1
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc "MicroMsg.SDK.WXMediaMessage"
new java/lang/StringBuilder
dup
ldc "get media object from bundle failed: unknown ident "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", ex = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method private static pathNewToOld(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifne L1
L0:
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "pathNewToOld fail, newPath is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
aload 0
areturn
L1:
aload 0
ldc "com.tencent.mm.sdk.modelmsg"
ldc "com.tencent.mm.sdk.openapi"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static pathOldToNew(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifne L1
L0:
ldc "MicroMsg.SDK.WXMediaMessage"
ldc "pathOldToNew fail, oldPath is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
aload 0
areturn
L1:
aload 0
ldc "com.tencent.mm.sdk.openapi"
ldc "com.tencent.mm.sdk.modelmsg"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static toBundle(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Landroid/os/Bundle;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "_wxobject_sdkVer"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/sdkVer I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "_wxobject_title"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/title Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxobject_description"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/description Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxobject_thumbdata"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/thumbData [B
invokevirtual android/os/Bundle/putByteArray(Ljava/lang/String;[B)V
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
ifnull L0
aload 1
ldc "_wxobject_identifier_"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/modelmsg/WXMediaMessage$Builder/pathNewToOld(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaObject Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;
aload 1
invokeinterface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject/serialize(Landroid/os/Bundle;)V 1
L0:
aload 1
ldc "_wxobject_mediatagname"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXMediaMessage/mediaTagName Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
