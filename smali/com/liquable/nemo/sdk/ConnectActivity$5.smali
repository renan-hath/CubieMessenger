.class Lcom/liquable/nemo/sdk/ConnectActivity$5;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sdk/ConnectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sdk/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/ConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$5;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$5;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    .line 238
    return-void
.end method
