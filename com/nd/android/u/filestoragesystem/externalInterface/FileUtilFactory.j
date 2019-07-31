.bytecode 50.0
.class public final synchronized com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory
.super java/lang/Object
.inner class private static SingletonHolder inner com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory$SingletonHolder outer com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory

.field private 'baseUrl' Ljava/lang/String;

.field private 'cloudID' Ljava/lang/String;

.field private 'externalInterface' Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;

.field private 'middleUrl' Ljava/lang/String;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "http://files.starapp.99.com/"
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
aload 0
ldc "http://m.starapp.99.com:6869/"
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/middleUrl Ljava/lang/String;
aload 0
ldc "jmu"
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/cloudID Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;)V
aload 0
invokespecial com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory$SingletonHolder/access$0()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method private setExternalInterface(Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/externalInterface Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
return
.limit locals 2
.limit stack 2
.end method

.method public getBaseUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCloudID()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/cloudID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDownUrlByFid(JLjava/lang/String;I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "show/file/fid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ifnull L0
aload 5
ldc "/sid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 4
ifle L1
aload 5
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 3
.end method

.method public getDownUrlByPath(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 9
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "show/folder/cloudid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "/type/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 9
ldc "/id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 9
ldc "/appid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 9
ldc "/path/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 7
ifnull L0
aload 9
ldc "/sid/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 8
ifle L1
aload 9
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 10
.limit stack 3
.end method

.method public getExternalInterface()Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/externalInterface Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLogoUrl(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;
aload 0
aload 1
iconst_3
lload 2
iload 4
ldc "/logo"
aload 5
iconst_0
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByPath(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 6
.limit stack 9
.end method

.method public getMiddleUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/middleUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getQrCodeUrl(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;
aload 0
aload 1
iconst_3
lload 2
iload 4
ldc "/qr"
aload 5
iconst_0
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByPath(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 6
.limit stack 9
.end method

.method public initizlieConfig(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/middleUrl Ljava/lang/String;
aload 0
new com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp
dup
invokespecial com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp/<init>()V
invokespecial com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/setExternalInterface(Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;)V
return
.limit locals 3
.limit stack 3
.end method

.method public initizlieConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/baseUrl Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/middleUrl Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/cloudID Ljava/lang/String;
aload 0
new com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp
dup
invokespecial com/nd/android/u/filestoragesystem/business/ExternalInterfaceImp/<init>()V
invokespecial com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/setExternalInterface(Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;)V
return
.limit locals 4
.limit stack 3
.end method
