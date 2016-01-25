.class public Lcom/liquable/nemo/client/ServiceResult;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 6
    .local p0, "this":Lcom/liquable/nemo/client/ServiceResult;, "Lcom/liquable/nemo/client/ServiceResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/liquable/nemo/client/ServiceResult;->result:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/liquable/nemo/client/ServiceResult;, "Lcom/liquable/nemo/client/ServiceResult<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/client/ServiceResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/liquable/nemo/client/ServiceResult;, "Lcom/liquable/nemo/client/ServiceResult<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
