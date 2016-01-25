.class Lcom/liquable/nemo/client/home/EndPointServerPicker$1;
.super Ljava/lang/Object;
.source "EndPointServerPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/home/EndPointServerPicker;->pickServer()Lcom/liquable/nemo/client/ServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/home/EndPointServerPicker;

.field final synthetic val$newServerInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/home/EndPointServerPicker;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/home/EndPointServerPicker;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;->this$0:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    iput-object p2, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;->val$newServerInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;->this$0:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    # getter for: Lcom/liquable/nemo/client/home/EndPointServerPicker;->pref:Lcom/liquable/nemo/util/Pref;
    invoke-static {v0}, Lcom/liquable/nemo/client/home/EndPointServerPicker;->access$000(Lcom/liquable/nemo/client/home/EndPointServerPicker;)Lcom/liquable/nemo/util/Pref;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;->val$newServerInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->saveEndPointServers(Ljava/util/List;)V

    .line 58
    return-void
.end method
