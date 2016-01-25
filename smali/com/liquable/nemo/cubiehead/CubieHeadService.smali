.class public Lcom/liquable/nemo/cubiehead/CubieHeadService;
.super Landroid/app/Service;
.source "CubieHeadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    }
.end annotation


# static fields
.field private static final KEY_MSG:Ljava/lang/String; = "KEY_MSG"

.field private static final KEY_UNREAD_COUNT:Ljava/lang/String; = "KEY_UNREAD_COUNT"

.field static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field private cubieHead:Landroid/view/View;

.field private cubieHeadImageView:Landroid/widget/ImageView;

.field private cubieHeadRemover:Landroid/view/View;

.field private cubieHeadTextView:Landroid/widget/TextView;

.field private fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

.field private hasContent:Z

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingClose()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/cubiehead/CubieHeadService;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/cubiehead/CubieHeadService;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;
    .param p1, "x1"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$102(Lcom/liquable/nemo/cubiehead/CubieHeadService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/cubiehead/CubieHeadService;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialY:I

    return v0
.end method

.method static synthetic access$302(Lcom/liquable/nemo/cubiehead/CubieHeadService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialY:I

    return p1
.end method

.method static synthetic access$400(Lcom/liquable/nemo/cubiehead/CubieHeadService;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchX:F

    return v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/cubiehead/CubieHeadService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchX:F

    return p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/cubiehead/CubieHeadService;)F
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchY:F

    return v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/cubiehead/CubieHeadService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchY:F

    return p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingOpen()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->isHeadInRemover()Z

    move-result v0

    return v0
.end method

.method private chattingClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNewMsgNotification()V

    .line 141
    invoke-direct {p0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLiteHide(Z)V

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead()V

    goto :goto_0
.end method

.method private chattingLiteHide(Z)V
    .locals 1
    .param p1, "temporary"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->unregisterForegroundOnlyAction(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->hide(Z)V

    goto :goto_0
.end method

.method private chattingLiteShow()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-nez v1, :cond_0

    .line 163
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 164
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initChattingLite(Landroid/view/WindowManager;)V

    .line 166
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->registerForegroundOnlyAction(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->show()V

    .line 168
    return-void
.end method

.method private chattingOpen()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNewMsgNotification()V

    .line 172
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLiteShow()V

    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->CLEAR:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V

    .line 50
    return-void
.end method

.method private dismiss()V
    .locals 5

    .prologue
    .line 182
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    sget-object v3, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "dismiss: always on => hide"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 186
    .local v2, "windowManager":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 187
    .local v0, "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getCubieHeadPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 188
    .local v1, "lastPosition":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 189
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 190
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V

    .line 191
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLiteHide(Z)V

    .line 198
    .end local v0    # "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "lastPosition":Landroid/graphics/Point;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v3, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "dismiss: not always on => stopSelf"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->stopSelf()V

    goto :goto_0
.end method

.method public static dismiss(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->DISMISS:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V

    .line 54
    return-void
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V

    .line 58
    return-void
.end method

.method public static hideChattingLite(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE_CHATTING_LITE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V

    .line 62
    return-void
.end method

.method private initChattingLite(Landroid/view/WindowManager;)V
    .locals 2
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 201
    new-instance v0, Lcom/liquable/nemo/cubiehead/ChattingLite;

    new-instance v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService$1;-><init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 207
    new-instance v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->registerFulltimeAction(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method private initCubieHead(Landroid/view/WindowManager;)V
    .locals 8
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    const/4 v1, -0x2

    .line 212
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030134

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    .line 213
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const v3, 0x7f0802f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadImageView:Landroid/widget/ImageView;

    .line 214
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const v3, 0x7f0802f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadTextView:Landroid/widget/TextView;

    .line 215
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/16 v4, 0x208

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 220
    .local v0, "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 221
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getCubieHeadPosition()Landroid/graphics/Point;

    move-result-object v6

    .line 222
    .local v6, "lastPosition":Landroid/graphics/Point;
    iget v1, v6, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 223
    iget v1, v6, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 224
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v7, Landroid/view/GestureDetector;

    new-instance v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;-><init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    invoke-direct {v7, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 244
    .local v7, "mGestureListener":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;

    invoke-direct {v2, p0, v7, p1}, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;-><init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;Landroid/view/GestureDetector;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    return-void
.end method

.method private initCubieHeadRemover(Landroid/view/WindowManager;)V
    .locals 6
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    const/16 v4, 0x8

    .line 290
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030135

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 293
    invoke-virtual {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x7d2

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 297
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 298
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method private initFullScreenDetector(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 302
    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService$4;-><init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    invoke-static {p0, p1, v0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->registerFullScreenListener(Landroid/content/Context;Landroid/view/WindowManager;Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;)Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    .line 315
    return-void
.end method

.method private isHeadInRemover()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 319
    .local v0, "d":[I
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 320
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v8

    aget v4, v0, v9

    aget v5, v0, v8

    iget-object v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    .line 322
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v0, v9

    iget-object v7, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;

    .line 323
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    .local v2, "removeRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 325
    new-instance v1, Landroid/graphics/Rect;

    aget v3, v0, v8

    aget v4, v0, v9

    aget v5, v0, v8

    iget-object v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    .line 327
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v0, v9

    iget-object v7, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    .line 328
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .local v1, "headRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method public static newMessage(Landroid/content/Context;Lcom/liquable/nemo/message/model/IDomainMessage;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p2, "unreadCount"    # I

    .prologue
    .line 67
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isCubieHeadEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->NEW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-virtual {v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "KEY_MSG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "KEY_UNREAD_COUNT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->SHOW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V

    .line 80
    return-void
.end method

.method private showHideHead()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 418
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v0

    .line 420
    .local v0, "alwaysOn":Z
    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showHideHead:cubieOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/liquable/nemo/BaseActivityHelper;->isCubieActivityInForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fullScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    .line 422
    invoke-virtual {v3}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hasContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hasContent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " alwaysOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 428
    sget-boolean v1, Lcom/liquable/nemo/BaseActivityHelper;->isCubieActivityInForeground:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    invoke-virtual {v1}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLiteHide(Z)V

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-boolean v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hasContent:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead()V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private snapCubieHead()V
    .locals 3

    .prologue
    .line 442
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 443
    .local v1, "windowManager":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 444
    .local v0, "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V

    .line 445
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    return-void
.end method

.method private snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V
    .locals 12
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const v11, 0x7f0802f0

    const/16 v7, 0x44

    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 449
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 450
    .local v3, "screenWidth":I
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 451
    .local v2, "screenHeight":I
    const/16 v6, 0x19

    invoke-static {p0, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 452
    .local v4, "statusBarHeight":I
    invoke-static {p0, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 453
    .local v1, "headWidth":I
    invoke-static {p0, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    .line 455
    .local v0, "headHeight":I
    iget-object v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .local v5, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v7, v3, 0x2

    if-ge v6, v7, :cond_0

    .line 457
    neg-int v6, v1

    div-int/lit8 v6, v6, 0x2

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 458
    invoke-virtual {v5, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 459
    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 460
    iget-object v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadImageView:Landroid/widget/ImageView;

    const v7, 0x7f02040d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    :goto_0
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v7, v2, v0

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 469
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 470
    return-void

    .line 462
    :cond_0
    div-int/lit8 v6, v1, 0x2

    sub-int v6, v3, v6

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    invoke-virtual {v5, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 464
    invoke-virtual {v5, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 465
    iget-object v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadImageView:Landroid/widget/ImageView;

    const v7, 0x7f020413

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isCubieHeadEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static start(Landroid/content/Context;Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    .prologue
    .line 92
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isCubieHeadEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 103
    return-void
.end method

.method private updateCubieHead(I)V
    .locals 3
    .param p1, "unreadCount"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 339
    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "onCreate"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 340
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 341
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 343
    .local v0, "windowManager":Landroid/view/WindowManager;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initChattingLite(Landroid/view/WindowManager;)V

    .line 347
    :cond_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initCubieHeadRemover(Landroid/view/WindowManager;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initCubieHead(Landroid/view/WindowManager;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->initFullScreenDetector(Landroid/view/WindowManager;)V

    .line 350
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "onDestroy"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 356
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 358
    iput-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->destroy(Landroid/view/ViewManager;)V

    .line 362
    iput-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->unregisterForegroundOnlyAction(Landroid/content/Context;)V

    .line 366
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;->unregisterFulltimeAction(Landroid/content/Context;)V

    .line 367
    iput-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->receiver:Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector;->destroy(Landroid/view/ViewManager;)V

    .line 371
    iput-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->fullScreenDetector:Lcom/liquable/nemo/cubiehead/FullScreenDetector;

    .line 373
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 374
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 378
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 379
    sget-object v2, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 380
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v5

    .line 384
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->toStrings()Ljava/util/List;

    move-result-object v1

    .line 385
    .local v1, "msgValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    sget-object v2, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    move-result-object v0

    .line 391
    .local v0, "msg":Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    sget-object v2, Lcom/liquable/nemo/cubiehead/CubieHeadService$5;->$SwitchMap$com$liquable$nemo$cubiehead$CubieHeadService$Msg:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V

    goto :goto_0

    .line 399
    :pswitch_2
    iput-boolean v5, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hasContent:Z

    .line 400
    const-string/jumbo v2, "KEY_UNREAD_COUNT"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->updateCubieHead(I)V

    .line 401
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V

    goto :goto_0

    .line 404
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->updateCubieHead(I)V

    goto :goto_0

    .line 407
    :pswitch_4
    iput-boolean v6, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hasContent:Z

    .line 408
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->dismiss()V

    goto :goto_0

    .line 411
    :pswitch_5
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingClose()V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingClose()V

    .line 475
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".HtcLinkifyDispatcherActivity"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 482
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
