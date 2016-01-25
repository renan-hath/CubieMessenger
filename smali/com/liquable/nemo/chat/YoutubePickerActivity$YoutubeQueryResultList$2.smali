.class Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    # invokes: Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->dispatchTask()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->access$500(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;)V

    .line 211
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->willSearch:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->access$602(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;Z)Z

    .line 212
    return-void
.end method
