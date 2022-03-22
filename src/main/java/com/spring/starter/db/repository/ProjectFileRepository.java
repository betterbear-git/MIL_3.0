package com.spring.starter.db.repository;

import com.spring.starter.db.entity.ProjectFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ProjectFileRepository extends JpaRepository<ProjectFile, Long> {

}
