.class Lcom/liquable/nemo/message/view/ReadSecretButton$2$1;
.super Ljava/lang/Object;
.source "ReadSecretButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/ReadSecretButton$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/message/view/ReadSecretButton$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/ReadSecretButton$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/message/view/ReadSecretButton$2;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2$1;->this$1:Lcom/liquable/nemo/message/view/ReadSecretButton$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2$1;->this$1:Lcom/liquable/nemo/message/view/ReadSecretButton$2;

    iget-object v0, v0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

    # invokes: Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecret()V
    invoke-static {v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->access$100(Lcom/liquable/nemo/message/view/ReadSecretButton;)V

    .line 71
    return-void
.end method
