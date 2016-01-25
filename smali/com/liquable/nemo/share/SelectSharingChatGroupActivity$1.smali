.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChange(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const v3, 0x7f0d0486

    .line 347
    if-nez p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shareBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$000(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shareBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$000(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$100(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
