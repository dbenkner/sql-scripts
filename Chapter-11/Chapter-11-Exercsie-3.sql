CREATE INDEX Idx_Group
    on GroupMembership (GroupID Asc);
CREATE NONCLUSTERED INDEX Idx_Members
    on GroupMembership (IndividualID Asc);