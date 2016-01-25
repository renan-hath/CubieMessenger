.class Lcom/liquable/nemo/voip/VoipErrorDialogActivity$1;
.super Ljava/lang/Object;
.source "VoipErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/VoipErrorDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/VoipErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/VoipErrorDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/VoipErrorDialogActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/voip/VoipErrorDialogActivity$1;->this$0:Lcom/liquable/nemo/voip/VoipErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipErrorDialogActivity$1;->this$0:Lcom/liquable/nemo/voip/VoipErrorDialogActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/VoipErrorDialogActivity;->finish()V

    .line 36
    return-void
.end method
