package com.hodu.model;

import java.sql.Blob;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ImageDTO {
    private Integer img_postnum;
    private String member_id;
    private String img_name;
    private Date img_date;
    private long img_size;
    private String img_file_type;
    private Blob img_file_data;

    private MultipartFile file;
}