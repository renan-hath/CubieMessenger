.class public Lcom/liquable/nemo/client/mapper/GenericDtoMapper;
.super Ljava/lang/Object;
.source "GenericDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static instances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/liquable/nemo/client/mapper/GenericDtoMapper",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/liquable/nemo/client/mapper/GenericDtoMapper;, "Lcom/liquable/nemo/client/mapper/GenericDtoMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/liquable/nemo/client/mapper/GenericDtoMapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "ref":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    .line 12
    .local v0, "mapper":Lcom/liquable/nemo/client/mapper/GenericDtoMapper;, "Lcom/liquable/nemo/client/mapper/GenericDtoMapper<*>;"
    if-nez v0, :cond_0

    .line 13
    sget-object v1, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    .end local v0    # "mapper":Lcom/liquable/nemo/client/mapper/GenericDtoMapper;, "Lcom/liquable/nemo/client/mapper/GenericDtoMapper<*>;"
    invoke-direct {v0}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;-><init>()V

    .restart local v0    # "mapper":Lcom/liquable/nemo/client/mapper/GenericDtoMapper;, "Lcom/liquable/nemo/client/mapper/GenericDtoMapper<*>;"
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    return-object v0
.end method

.method public static getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;)",
            "Lcom/liquable/nemo/client/mapper/GenericDtoMapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "ref":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/liquable/nemo/client/mapper/GenericDtoMapper;, "Lcom/liquable/nemo/client/mapper/GenericDtoMapper<TT;>;"
    if-nez p1, :cond_0

    .line 30
    const/4 p1, 0x0

    .line 32
    .end local p1    # "result":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method
