package core.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "illnesses")
public class Illness {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "system")
    private OrganSystem system;

    @Column(name = "name", length = 100, nullable = false)
    private String name;

    @Column(name = "description", columnDefinition="TEXT", nullable = false)
    private String description;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public OrganSystem getSystem() {
        return system;
    }

    public void setSystem(OrganSystem system) {
        this.system = system;
    }
}
