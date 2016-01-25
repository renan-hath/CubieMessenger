.class Lcom/liquable/nemo/NemoApplication$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "NemoApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/NemoApplication;->patchChatGroupOwnerIfRequired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/NemoApplication;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/NemoApplication;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/NemoApplication;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/liquable/nemo/NemoApplication$3;->this$0:Lcom/liquable/nemo/NemoApplication;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 378
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/NemoApplication$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncAllMultiChatGroupsFromServer()V

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 378
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/NemoApplication$3;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 392
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->setPatchChatGroupOwnerDone()V

    .line 393
    return-void
.end method
