.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;

.field public static final enum 'INSTANCE' Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;

.method static <clinit>()V
new com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
iconst_1
anewarray com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
dup
iconst_0
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aastore
putstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
ldc com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public getAllParentByCode(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Lcom/nd/rj/common/administrativeregions/lib/Level;Lcom/nd/rj/common/administrativeregions/lib/Fileds;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/Fileds/isCodeValid(Ljava/lang/String;)Z
ifne L0
L1:
aload 2
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/getLevelByCode(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 4
aload 4
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
if_acmpne L2
aload 3
new java/lang/StringBuilder
dup
aload 1
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "0000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 3
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/getItemsByCodes(Ljava/util/List;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/administrativeregions/lib/Fileds
astore 3
aload 2
aload 3
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L4
L2:
aload 4
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
if_acmpne L3
aload 3
new java/lang/StringBuilder
dup
aload 1
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "0000"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new java/lang/StringBuilder
dup
aload 1
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "00"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
.limit locals 5
.limit stack 6
.end method

.method public getDirectChildrenByCode(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/rj/common/administrativeregions/lib/Fileds;>;"
aload 1
ifnull L0
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/Fileds/isCodeValid(Ljava/lang/String;)Z
ifeq L1
L0:
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 1
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/getDirectChildrenByCode(Ljava/lang/String;)Ljava/util/List;
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method

.method public getFullName(Ljava/lang/String;Z)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 0
aload 1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getAllParentByCode(Ljava/lang/String;)Ljava/util/Map;
astore 4
aload 4
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/rj/common/administrativeregions/lib/Fileds
astore 5
aload 5
ifnull L0
aload 3
aload 5
iload 2
invokevirtual com/nd/rj/common/administrativeregions/lib/Fileds/getName(Z)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 4
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/rj/common/administrativeregions/lib/Fileds
astore 4
aload 4
ifnull L1
aload 3
aload 4
iload 2
invokevirtual com/nd/rj/common/administrativeregions/lib/Fileds/getName(Z)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 0
aload 1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getItemByCode(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Fileds;
astore 1
aload 1
ifnull L2
aload 3
aload 1
iload 2
invokevirtual com/nd/rj/common/administrativeregions/lib/Fileds/getName(Z)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 3
.end method

.method public getItemByCode(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Fileds;
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/Fileds/isCodeValid(Ljava/lang/String;)Z
ifne L0
L1:
aconst_null
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 2
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/getItemsByCodes(Ljava/util/List;)Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L1
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/rj/common/administrativeregions/lib/Fileds
areturn
.limit locals 3
.limit stack 2
.end method
