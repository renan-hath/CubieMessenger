.class Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    .local v0, "position":I
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->toggleChecked(I)V

    .line 108
    return-void
.end method
