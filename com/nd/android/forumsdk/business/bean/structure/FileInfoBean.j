.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/FileInfoBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'DEFAULT_PIC_SIZE' I = 160


.field private static final 'serialVersionUID' J = 1L


.field private 'create_time' J

.field private 'desc' Ljava/lang/String;

.field private 'ext' Ljava/lang/String;

.field private 'fid' J

.field private 'grid' I

.field private 'group' Ljava/lang/String;

.field private 'height' J

.field private 'length' J

.field private 'name' Ljava/lang/String;

.field private 'size' J

.field private 'source' Ljava/lang/String;

.field private 'type' Ljava/lang/String;

.field private 'width' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/type Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/group Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/source Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/desc Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/ext Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getCreateTime()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/create_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDesc()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/desc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExt()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/ext Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGrid()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/grid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroup()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/group Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHeight()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/height J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLength()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/length J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/size J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSource()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/source Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/fid J
sipush 160
invokestatic com/nd/android/forumsdk/ForumUtils/getFileDownloadUrl(JI)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getUrl(I)Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/fid J
iload 1
invokestatic com/nd/android/forumsdk/ForumUtils/getFileDownloadUrl(JI)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getWidth()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/width J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setCreateTime(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/create_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setDesc(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/desc Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setExt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/ext Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGrid(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/grid I
return
.limit locals 2
.limit stack 2
.end method

.method public setGroup(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/group Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setHeight(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/height J
return
.limit locals 3
.limit stack 3
.end method

.method public setLength(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/length J
return
.limit locals 3
.limit stack 3
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSize(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/size J
return
.limit locals 3
.limit stack 3
.end method

.method public setSource(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/source Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setWidth(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/FileInfoBean/width J
return
.limit locals 3
.limit stack 3
.end method
