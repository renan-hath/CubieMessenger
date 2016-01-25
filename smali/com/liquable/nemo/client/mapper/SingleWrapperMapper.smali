.class public Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;
.super Ljava/lang/Object;
.source "SingleWrapperMapper.java"

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


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;, "Lcom/liquable/nemo/client/mapper/SingleWrapperMapper<TT;>;"
    const-string/jumbo v0, "data"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 15
    .local p0, "this":Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;, "Lcom/liquable/nemo/client/mapper/SingleWrapperMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;->fieldName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;, "Lcom/liquable/nemo/client/mapper/SingleWrapperMapper<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 22
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    iget-object v1, p0, Lcom/liquable/nemo/client/mapper/SingleWrapperMapper;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
