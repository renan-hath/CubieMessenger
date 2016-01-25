.class Lcom/liquable/nemo/chat/ChatGroupMenu$1;
.super Ljava/lang/Object;
.source "ChatGroupMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupMenu;->clearMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupMenu;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$1;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 106
    return-void
.end method
