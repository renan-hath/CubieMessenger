.class public Lcom/liquable/nemo/db/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# instance fields
.field private final dao:Lcom/liquable/nemo/db/Dao;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/db/Dao;)V
    .locals 0
    .param p1, "dao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/liquable/nemo/db/Cleaner;->dao:Lcom/liquable/nemo/db/Dao;

    .line 8
    return-void
.end method


# virtual methods
.method public cleanOldUnknownMessage()V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/liquable/nemo/db/Cleaner;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/MessageDao;->cleanOldUnknownMessage()V

    .line 12
    return-void
.end method

.method public cleanReadAck()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/db/Cleaner;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/MessageDao;->cleanReadAck()V

    .line 16
    return-void
.end method
