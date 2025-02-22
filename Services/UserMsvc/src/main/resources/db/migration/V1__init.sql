DO language plpgsql $$
    BEGIN
        RAISE NOTICE 'Database migration completed. Version: V1.0.0';
    END
$$;

