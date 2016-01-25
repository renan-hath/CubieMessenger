.class public Lcom/liquable/nemo/message/view/ReadSecretButton;
.super Landroid/widget/Button;
.source "ReadSecretButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;
    }
.end annotation


# static fields
.field private static final DUMMY:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;


# instance fields
.field private listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

.field private message:Lcom/liquable/nemo/message/model/ISecret;

.field private openSecretOnRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/liquable/nemo/message/view/ReadSecretButton$1;

    invoke-direct {v0}, Lcom/liquable/nemo/message/view/ReadSecretButton$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/message/view/ReadSecretButton;->DUMMY:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/liquable/nemo/message/view/ReadSecretButton;->DUMMY:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecretOnRead:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcom/liquable/nemo/message/view/ReadSecretButton;->DUMMY:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecretOnRead:Z

    .line 41
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v0, Lcom/liquable/nemo/message/view/ReadSecretButton;->DUMMY:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecretOnRead:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/ReadSecretButton;)Lcom/liquable/nemo/message/model/ISecret;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/ReadSecretButton;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/message/view/ReadSecretButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/ReadSecretButton;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecret()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/ReadSecretButton$2;-><init>(Lcom/liquable/nemo/message/view/ReadSecretButton;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private openSecret()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecretOnRead:Z

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->setVisibility(I)V

    .line 85
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->openSecret(Lcom/liquable/nemo/message/model/ISecret;)V

    .line 86
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->updateSecretMessage(Lcom/liquable/nemo/message/model/ISecret;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;->onRead(Lcom/liquable/nemo/message/model/ISecret;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use setOnReadListener instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnReadSecretListener(Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->listener:Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;

    .line 99
    return-void
.end method

.method public updateSecret(Lcom/liquable/nemo/message/model/ISecret;Z)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ISecret;
    .param p2, "openSecretOnRead"    # Z

    .prologue
    .line 102
    iput-boolean p2, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecretOnRead:Z

    .line 103
    iput-object p1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;

    .line 104
    sget-object v0, Lcom/liquable/nemo/message/model/ISecret$State;->SEALED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {p1, v0}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->setVisibility(I)V

    goto :goto_0
.end method
