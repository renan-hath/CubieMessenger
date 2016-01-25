.class public final Lcom/liquable/nemo/util/ServiceResult;
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
.field private final exception:Ljava/lang/Exception;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final success:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 0
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/util/ServiceResult;->result:Ljava/lang/Object;

    .line 21
    iput-boolean p3, p0, Lcom/liquable/nemo/util/ServiceResult;->success:Z

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/util/ServiceResult;->exception:Ljava/lang/Exception;

    .line 23
    return-void
.end method

.method public static createFail(Ljava/lang/Exception;)Lcom/liquable/nemo/util/ServiceResult;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6
    new-instance v0, Lcom/liquable/nemo/util/ServiceResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/liquable/nemo/util/ServiceResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    return-object v0
.end method

.method public static createSuccess(Ljava/lang/Object;)Lcom/liquable/nemo/util/ServiceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/liquable/nemo/util/ServiceResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/util/ServiceResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/ServiceResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/ServiceResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TT;>;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/ServiceResult;->success:Z

    return v0
.end method
